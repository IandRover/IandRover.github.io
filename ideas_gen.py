#!/usr/bin/env python3
"""
Ideas HTML Generator

Reads ideas.yaml and generates the ideas section for ideas.html.
Usage: python ideas_gen.py
"""

from pathlib import Path

import yaml

# Tag color mapping
TAG_COLORS = {
    "diffusion": "#9333ea",  # purple
    "local-learning": "#0d9488",  # teal
    "biologically-plausible": "#16a34a",  # green
    "theory": "#2563eb",  # blue
    "vision": "#ea580c",  # orange
    "optimization": "#dc2626",  # red
}

# Status styling
STATUS_STYLES = {
    "exploring": {"color": "#16a34a", "label": "🔍 Exploring"},
    "paused": {"color": "#ca8a04", "label": "⏸️ Paused"},
    "archived": {"color": "#6b7280", "label": "📦 Archived"},
    "published": {"color": "#2563eb", "label": "📄 Published"},
}


def slugify(text: str) -> str:
    """Convert text to URL-friendly slug."""
    import re

    text = text.lower()
    text = re.sub(r"[^\w\s-]", "", text)
    text = re.sub(r"[\s_]+", "-", text)
    text = re.sub(r"-+", "-", text)
    return text.strip("-")


def load_ideas(yaml_path: str) -> list:
    """Load ideas from YAML file."""
    with open(yaml_path, "r", encoding="utf-8") as f:
        data = yaml.safe_load(f)
    return data.get("ideas", [])


def generate_tags_html(tags: list) -> str:
    """Generate HTML for tag badges."""
    if not tags:
        return ""

    tag_parts = []
    for tag in tags:
        color = TAG_COLORS.get(tag, "#6b7280")
        tag_parts.append(
            f'<span class="idea-tag" style="background-color: {color}20; color: {color}; border: 1px solid {color}40;">{tag}</span>'
        )
    return " ".join(tag_parts)


def generate_related_works_html(related_works: list) -> str:
    """Generate HTML for related works."""
    if not related_works:
        return ""

    items = []
    for work in related_works:
        title = work.get("title", "")
        url = work.get("url", "")
        relation = work.get("relation", "")

        # Support both single note and multiple notes
        notes = work.get("notes", [])
        single_note = work.get("note", "")
        if single_note and not notes:
            notes = [single_note]

        # Build link
        if url:
            link = f'<a href="{url}" target="_blank" class="related-link">{title}</a>'
        else:
            link = title

        # Format notes with numbered markers [1], [2], etc. - each on new line
        if len(notes) > 1:
            notes_html = "<br>" + "<br>".join(
                f'<span class="note-marker">[{i+1}]</span> {note}'
                for i, note in enumerate(notes)
            )
        elif len(notes) == 1:
            notes_html = notes[0]
        else:
            notes_html = ""

        # Format: "Inspired by [Paper]: note1, note2"
        if relation:
            relation_cap = relation.capitalize()
            if notes_html:
                items.append(
                    f'<span class="relation-type">{relation_cap}</span> {link}: <span class="related-note">{notes_html}</span>'
                )
            else:
                items.append(
                    f'<span class="relation-type">{relation_cap}</span> {link}'
                )
        else:
            if notes_html:
                items.append(f'{link}: <span class="related-note">{notes_html}</span>')
            else:
                items.append(link)

    return f'<div class="related-works">{"<br>".join(items)}</div>'


def generate_status_html(status: str) -> str:
    """Generate HTML for status badge."""
    if not status:
        return ""

    style = STATUS_STYLES.get(status, STATUS_STYLES["exploring"])
    return f'<span class="idea-status" style="color: {style["color"]};">{style["label"]}</span>'


def generate_idea_card(idea: dict) -> str:
    """Generate HTML for a single idea card."""
    tags_html = generate_tags_html(idea.get("tags", []))
    related_html = generate_related_works_html(idea.get("related_works", []))
    status_html = generate_status_html(idea.get("status", ""))

    date = idea.get("date", "")
    title = idea.get("title", "")
    note = idea.get("note", "")
    idea_id = slugify(title)

    if isinstance(note, list):
        if len(note) == 1:
            note_html = note[0]
        else:
            note_html = "<br>".join(
                f'<span class="note-marker">{chr(97 + i)}.</span> {item}'
                for i, item in enumerate(note)
            )
    else:
        note_html = note

    html = f"""    <div class="idea" id="{idea_id}">
        <div class="idea-header">
            <span class="date">{date}</span>
            {status_html}
        </div>
        <div class="title">{title}</div>
        <div class="note">{note_html}</div>
        <div class="idea-meta">
            <div class="idea-tags">{tags_html}</div>
            {related_html}
        </div>
    </div>"""

    return html


def generate_ideas_html(ideas: list) -> str:
    """Generate the complete ideas section HTML."""

    # Sort by date (newest first)
    sorted_ideas = sorted(ideas, key=lambda x: x.get("date", ""), reverse=True)

    # Generate cards
    idea_cards = "\n\n".join(generate_idea_card(idea) for idea in sorted_ideas)

    # Get unique tags for filter buttons
    all_tags = set()
    for idea in ideas:
        all_tags.update(idea.get("tags", []))

    tag_buttons = "\n        ".join(
        f'<button class="filter-btn" data-tag="{tag}">{tag}</button>'
        for tag in sorted(all_tags)
    )

    html = f"""<!-- IDEAS_START -->
<!-- Auto-generated by ideas_gen.py - Do not edit manually -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Research Ideas</title>
    <style>
        body {{
            font-family: -apple-system, BlinkMacSystemFont, 'Helvetica Neue', sans-serif;
            max-width: 800px;
            margin: 60px auto;
            padding: 0 20px;
            background: #fff;
            color: #333;
            line-height: 1.6;
        }}
        h1 {{
            font-weight: 400;
            font-size: 1.5rem;
            margin-bottom: 20px;
            color: #111;
        }}
        .filters {{
            margin-bottom: 30px;
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }}
        .filter-btn {{
            padding: 4px 12px;
            border: 1px solid #ddd;
            border-radius: 16px;
            background: #fff;
            cursor: pointer;
            font-size: 0.85rem;
            transition: all 0.2s;
        }}
        .filter-btn:hover {{
            border-color: #999;
        }}
        .filter-btn.active {{
            background: #333;
            color: #fff;
            border-color: #333;
        }}
        .idea {{
            margin-bottom: 32px;
            padding-bottom: 24px;
            border-bottom: 1px solid #eee;
        }}
        .idea:last-child {{
            border-bottom: none;
        }}
        .idea-header {{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 8px;
        }}
        .date {{
            font-size: 0.85rem;
            color: #999;
        }}
        .idea-status {{
            font-size: 0.8rem;
            font-weight: 500;
        }}
        .title {{
            font-weight: 500;
            margin-bottom: 6px;
            font-size: 1.05rem;
        }}
        .note {{
            color: #666;
            font-size: 0.95rem;
            margin-bottom: 12px;
        }}
        .idea-meta {{
            display: flex;
            flex-direction: column;
            gap: 8px;
        }}
        .idea-tags {{
            display: flex;
            flex-wrap: wrap;
            gap: 6px;
        }}
        .idea-tag {{
            padding: 2px 8px;
            border-radius: 12px;
            font-size: 0.75rem;
            font-weight: 500;
        }}
        .related-works {{
            font-size: 0.85rem;
            color: #666;
            line-height: 1.8;
        }}
        .related-link {{
            color: #111;
            text-decoration: underline;
            text-decoration-color: #ccc;
            text-underline-offset: 2px;
        }}
        .related-link:hover {{
            text-decoration-color: #111;
        }}
        .relation-type {{
            color: #888;
            font-style: italic;
        }}
        .related-note {{
            color: #666;
        }}
        .note-marker {{
            color: #888;
            font-size: 0.8rem;
            font-weight: 500;
            margin-right: 4px;
        }}
        .idea.hidden {{
            display: none;
        }}
        .back-link {{
            display: inline-block;
            margin-bottom: 20px;
            color: #666;
            text-decoration: none;
            font-size: 0.9rem;
        }}
        .back-link:hover {{
            color: #333;
        }}
    </style>
</head>
<body>
    <a href="index.html" class="back-link">← Back to Home</a>
    <h1>Research Ideas</h1>

    <div class="filters">
        <button class="filter-btn active" data-tag="all">All</button>
        {tag_buttons}
    </div>

{idea_cards}

    <script>
    document.addEventListener('DOMContentLoaded', function() {{
        const filterBtns = document.querySelectorAll('.filter-btn');
        const ideas = document.querySelectorAll('.idea');

        filterBtns.forEach(btn => {{
            btn.addEventListener('click', function() {{
                filterBtns.forEach(b => b.classList.remove('active'));
                this.classList.add('active');

                const tag = this.dataset.tag;

                ideas.forEach(idea => {{
                    if (tag === 'all') {{
                        idea.classList.remove('hidden');
                    }} else {{
                        const ideaTags = idea.querySelectorAll('.idea-tag');
                        const hasTag = Array.from(ideaTags).some(t => t.textContent === tag);
                        idea.classList.toggle('hidden', !hasTag);
                    }}
                }});
            }});
        }});
    }});
    </script>
</body>
</html>
<!-- IDEAS_END -->"""

    return html


def update_ideas_html(html_path: str, ideas_html: str):
    """Update or create ideas.html with the generated content."""
    # For ideas.html, we replace the entire file
    with open(html_path, "w", encoding="utf-8") as f:
        f.write(ideas_html)
    return True


def main():
    # Paths
    script_dir = Path(__file__).parent
    yaml_path = script_dir / "ideas.yaml"
    html_path = script_dir / "ideas.html"

    # Load ideas
    print(f"Loading ideas from {yaml_path}...")
    ideas = load_ideas(yaml_path)
    print(f"Found {len(ideas)} ideas")

    # Count by status
    status_counts = {}
    for idea in ideas:
        status = idea.get("status", "unknown")
        status_counts[status] = status_counts.get(status, 0) + 1

    for status, count in sorted(status_counts.items()):
        print(f"  - {status}: {count}")

    # Generate HTML
    print("\nGenerating HTML...")
    ideas_html = generate_ideas_html(ideas)

    # Update ideas.html
    print(f"Writing to {html_path}...")
    if update_ideas_html(html_path, ideas_html):
        print("✓ Successfully generated ideas.html")
    else:
        print("✗ Failed to generate ideas.html")
        return 1

    return 0


if __name__ == "__main__":
    exit(main())
