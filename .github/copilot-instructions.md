# Copilot Instructions

## Project Overview
- Static personal website rooted at `index.html` with assets in `assets/`.
- Publications are data-driven: `publications.yaml` is rendered into `index.html` between `<!-- PUBLICATIONS_START -->` and `<!-- PUBLICATIONS_END -->` by `paper_gen.py`.
- Research ideas are data-driven: `ideas.yaml` fully regenerates `ideas.html` via `ideas_gen.py`.
- `UnivEarth/` is a separate static site with its own `index.html` and `static/` assets.

## Key Workflows
- Update publications: edit `publications.yaml`, then run `python paper_gen.py` to refresh the publications section in `index.html`.
- Update ideas: edit `ideas.yaml`, then run `python ideas_gen.py` to regenerate `ideas.html`.
- The generators use `yaml.safe_load` and require the `pyyaml` package.

## Project Conventions
- Do not hand-edit generated content inside `index.html` publication markers; re-run `paper_gen.py` instead.
- Do not hand-edit `ideas.html`; it is entirely overwritten by `ideas_gen.py`.
- Publication cards assume optional `links` fields (e.g., `paper`, `project`, `github`, `video`, `medium`) and render only what exists.
- Front-end styling is split between `assets/css/main.css` and `assets/css/publications.css`; vendor JS/CSS lives under `assets/vendor/`.

## Examples
- Marker region in `index.html`:
  `<!-- PUBLICATIONS_START -->` ... `<!-- PUBLICATIONS_END -->`