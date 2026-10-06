// ---- Style knobs ----
#let me = "Chia-Hsiang Kao"
#let body-font = "Avenir Next"
#let accent = rgb("#0f6e6e")
#let muted = luma(90)
#let base-size = 10pt

#set document(title: me + " — Resume", author: me)
#set page(paper: "a4", margin: (x: 0.6in, y: 0.5in))
#set text(font: body-font, size: base-size)
#set par(leading: 0.5em)
#set list(indent: 0.1em, body-indent: 0.45em, spacing: 0.45em, marker: text(fill: accent, sym.bullet))
#show link: set text(fill: accent)

#show heading.where(level: 1): it => block(above: 0.95em, below: 0.5em, stack(
  spacing: 3pt,
  text(size: 10.5pt, weight: "bold", fill: accent, tracking: 0.1em, upper(it.body)),
  line(length: 100%, stroke: 0.5pt + luma(180)),
))

// ---- Helpers ----
#let entry(title, org, date, place: none, sub: none) = block(above: 0.75em, below: 0.45em, grid(
  columns: (1fr, auto),
  row-gutter: 0.4em,
  [*#title* #text(fill: muted)[· #org#if place != none [, #place]]], text(fill: muted, date),
  ..if sub != none { (text(fill: muted, sub), []) },
))

#let sel(title, venue, note: none) = block(above: 0.5em, grid(
  columns: (1fr, auto),
  column-gutter: 1em,
  [#title#if note != none [ #text(fill: muted, size: 0.9em)[(#note)]]], text(weight: "bold", fill: accent, venue),
))

// ---- Header ----
#align(center)[
  #text(size: 22pt, weight: "bold", me)
  #v(-0.5em)
  #text(size: 10.5pt, fill: accent)[World Models · Video Generation · LLM Agents]
  #v(-0.3em)
  #text(size: 9pt)[
    #link("mailto:ck696@cornell.edu")[ck696\@cornell.edu] #h(0.4em)|#h(0.4em)
    #link("https://iandrover.github.io")[iandrover.github.io] #h(0.4em)|#h(0.4em)
    #link("https://scholar.google.com/citations?user=W_i9B0sAAAAJ")[Google Scholar] #h(0.4em)|#h(0.4em)
    #link("https://github.com/IandRover")[GitHub]
  ]
]

= Summary

Cornell CS Ph.D. (expected August 2027) building world models that recover and predict real-world 3D motion and physics, and video generation models that learn new tasks in context. Led all first-author projects, with papers at CVPR, NeurIPS, ICLR, ACL, and MICCAI; 500+ citations (h-index 7). Student Researcher at Meta; previously Applied Scientist Intern at Amazon. Trained as a physician (M.D.).

= Experience

#entry("Student Researcher", "Meta", "Jan 2026 – May 2027", place: "New York, NY")
- Leading *amodal scene flow completion*: jointly completing occluded scene geometry and its 3D motion, beyond visible-only scene flow; designed a novel point-cloud tokenizer and a diffusion model that completes point-voxel tokens while predicting the motion field.
- Led *ViGeo*, a video in-context learning framework that unifies video tasks as spatiotemporal canvas completion; a single model absorbs a diverse task taxonomy spanning camera control, modality-guided generation, and video manipulation, and generalizes to unseen tasks and sensing modalities. Fully fine-tuned Wan2.2-5B on 32 A100 nodes.

#entry("Applied Scientist Intern", "Amazon", "May 2025 – Aug 2025", place: "Sunnyvale, CA")
- Led *Δynamics* (CVPR 2026), a VLM that recovers rigid-body physics from monocular video by generating MuJoCo scene configurations as structured text. Trained on 400K synthetic videos, it substantially outperforms frontier VLMs, improves further with test-time search, and transfers to real-world videos.

#entry("Graduate Researcher", "Cornell University", "2023 – Present", place: "Ithaca, NY")
- Led *UnivEarth* (ACL 2026 Findings), a benchmark and harness for code-executing LLM agents on Earth observation; showed frontier agents reach only 33% accuracy as generated code fails 58% of the time. Mentored two junior researchers.
- Led *AllClear* (NeurIPS 2024 D&B), a cloud-removal benchmark for satellite imagery, mentoring one junior researcher; proposed *counter-current learning* (NeurIPS 2024), a biologically plausible alternative to backprop.

= Selected Publications

#sel([Unifying Video Tasks via Spatiotemporal Analogy], [ICLR 2027 (under review)])
#sel([Δynamics: Language-Based Representation for Inferring Rigid-Body Dynamics From Videos], [CVPR 2026])
#sel([Towards LLM Agents for Earth Observation], [ACL 2026 Findings])
#sel([Counter-Current Learning: A Biologically Plausible Dual Network Approach for Deep Learning], [NeurIPS 2024])
#sel([AllClear: A Dataset and Benchmark for Cloud Removal in Satellite Imagery], [NeurIPS 2024 D&B], note: "co-first author")
#sel([MAML Is a Noisy Contrastive Learner in the Classification], [ICLR 2022])
#sel([Demystifying T1-MRI to FDG18-PET Image Translation via Representational Similarity], [MICCAI 2021])
#v(0.2em)
#text(size: 8.5pt, fill: muted)[First author unless noted. Full list of 11 papers on #link("https://scholar.google.com/citations?user=W_i9B0sAAAAJ")[Google Scholar].]

= Education

#entry("Ph.D., Computer Science", "Cornell University", "2023 – Aug 2027 (expected)", sub: [Advisor: Bharath Hariharan])
#entry("Doctor of Medicine (M.D.)", "National Yang-Ming Chiao-Tung University", "2015 – 2022")

= Skills, Honors & Service

*Modeling:* world models, video generation (flow matching, Wan2.2), VLMs, LLM agents & tool use \
*Tools:* PyTorch, FastVideo, multi-node distributed training, MuJoCo, Google Earth Engine \
*Honors:* Cornell Foundational AI PhD Fellowship (2025), MICCAI Student Travel Award (2021), NSTC Undergraduate Research Fellowship (2018, 2020) \
*Reviewer:* NeurIPS, ICLR, ICML, ECCV, COLM, AAAI, AISTATS; CVIU, IEEE TETCI
