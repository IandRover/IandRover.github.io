// ---- Style knobs ----
#let me = "Chia-Hsiang Kao"
#let body-font = "Charter"
#let accent = rgb("#1f3a5f")
#let muted = luma(85)
#let base-size = 10pt
#let name-gap = 6pt

#set document(title: me + " — CV", author: me)
#set page(
  paper: "a4",
  margin: (x: 0.65in, y: 0.5in),
  footer: context text(size: 8pt, fill: luma(130))[
    #me — Curriculum Vitae #h(1fr) #counter(page).display("1 / 1", both: true)
  ],
)
#set text(font: body-font, size: base-size)
#set par(leading: 0.5em)
#set list(indent: 0.15em, body-indent: 0.5em, spacing: 0.5em, marker: text(fill: accent, sym.bullet))
#show link: set text(fill: accent)

#show heading.where(level: 1): it => block(above: 1.1em, below: 0.65em, sticky: true, stack(
  spacing: 4pt,
  text(size: 11pt, weight: "bold", fill: accent, tracking: 0.08em, upper(it.body)),
  line(length: 100%, stroke: 0.6pt + accent),
))

// ---- Helpers ----
#let entry(title, org, date, place: none, sub: none) = block(above: 0.85em, below: 0.5em, grid(
  columns: (1fr, auto),
  row-gutter: 0.4em,
  [*#title* #h(0.2em) | #h(0.2em) #org#if place != none { text(fill: muted)[, #place] }], text(fill: muted, date),
  ..if sub != none { (text(style: "italic", fill: muted, sub), []) },
))

#let dated(body, date) = grid(columns: (1fr, auto), body, text(fill: muted, date))

#let links(..pairs) = pairs.pos().map(((label, url)) => link(url)[\[#label\]]).join(h(0.35em))

#let pub(tag, title, authors: none, venue: none, urls: ()) = block(above: 0.62em, breakable: false, {
  set par(leading: 0.24em)
  grid(
    columns: (2.6em, 1fr),
    row-gutter: 0.4em,
    text(fill: muted, "[" + tag + "]"), strong(title),
    ..if authors != none { ([], { show me: underline; authors }) },
    [], [#emph(venue)#if urls.len() > 0 [#h(0.6em)#text(size: 0.9em, links(..urls))]],
  )
})

// ---- Header ----
#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  stack(
    spacing: name-gap,
    text(size: 24pt, weight: "bold", fill: accent, top-edge: "cap-height", bottom-edge: "baseline", me),
    text(size: 11pt, fill: muted, top-edge: "cap-height", bottom-edge: "baseline")[Ph.D. in Computer Science, Cornell University · Expected Fall 2027],
  ),
  text(size: 9pt)[
    #link("mailto:ck696@cornell.edu")[ck696\@cornell.edu] \
    #link("https://iandrover.github.io")[iandrover.github.io] \
    #link("https://scholar.google.com/citations?user=W_i9B0sAAAAJ")[Google Scholar] · #link("https://github.com/IandRover")[GitHub]
  ],
)

= Research Interests

I build world models that infer and predict the hidden dynamics of real-world interactions: recovering 3D motion and physics from observation, and generating controllable video.

- *3D & physical world modeling:* completing occluded scene geometry and motion (amodal scene flow); recovering rigid-body physics from video (Δynamics).
- *Video generation & in-context learning:* unifying video tasks through spatiotemporal analogy (ViGeo).
- *LLM agents:* code-executing, tool-using agents and their evaluation (UnivEarth).

= Education

#entry("Ph.D. in Computer Science", "Cornell University", "2023 – Fall 2027 (expected)", place: "Ithaca, NY",
  sub: [Advisor: #link("https://www.cs.cornell.edu/~bharathh/")[Bharath Hariharan]])

#entry("Doctor of Medicine (M.D.)", "National Yang-Ming Chiao-Tung University", "2015 – 2022", place: "Taipei, Taiwan")

= Research Experience

#entry("Student Researcher", "Meta", "Jan 2026 – May 2027", place: "New York, NY", sub: [Host: #link("https://kmnp.github.io")[Menglin Jia]])
- *Amodal scene flow completion (ongoing):* leading scene-level completion of occluded geometry together with its 3D motion, beyond prior visible-only scene flow; designed a novel point-cloud tokenizer and a diffusion model that completes point-voxel tokens while predicting the motion field.
- *ViGeo (Preprint):* led a video in-context learning framework that unifies video tasks as spatiotemporal canvas completion; developed a single model that absorbs a diverse task taxonomy spanning camera control, modality-guided generation, and video manipulation, and generalizes to unseen tasks and sensing modalities; fully fine-tuned Wan2.2-5B on 32 A100 nodes.

#entry("Applied Scientist Intern", "Amazon", "May 2025 – Aug 2025", place: "Sunnyvale, CA", sub: [Host: #link("https://chienyiwang.github.io")[Chien-Yi Wang]])
- *Δynamics (CVPR 2026):* led a VLM that recovers rigid-body physics from monocular video by generating MuJoCo scene configurations as structured text. Trained on 400K synthetic videos with natural-language motion reasoning as auxiliary supervision, it substantially outperforms frontier VLMs, improves further with test-time search, and transfers to a new benchmark of 235 real-world videos.

#entry("Graduate Researcher", "Cornell University", "2023 – Present", place: "Ithaca, NY", sub: [Advisor: Bharath Hariharan])
- *UnivEarth (ACL 2026 Findings):* led a benchmark of 140 Earth-observation questions across 17 satellite sensors for code-executing LLM agents using the Google Earth Engine API; showed frontier agents reach only 33% accuracy, with generated code failing 58% of the time.
- *AllClear (NeurIPS 2024 D&B):* led a dataset and benchmark for cloud removal in satellite imagery.
- *Counter-current learning (NeurIPS 2024):* proposed a biologically plausible alternative to backpropagation using anti-parallel feedforward and feedback networks.

= Mentoring

- Hangyu Zhou: AllClear (NeurIPS 2024 Datasets & Benchmarks, co-first author)
- Cheryl Lam and Aarush Umap: UnivEarth (ACL 2026 Findings)

= Skills

*Modeling:* world models, video generation (flow matching, Wan2.2), VLMs, LLM agents & tool use \
*Tools:* PyTorch, FastVideo, multi-node distributed training (32 A100 nodes), MuJoCo, Google Earth Engine

= Publications

#block(sticky: true, text(size: 8.5pt, fill: muted)[#link("https://scholar.google.com/citations?user=W_i9B0sAAAAJ")[Google Scholar]: 500+ citations, h-index 7 (Oct 2026)])

#pub("S.2",
  [Unifying Video Tasks via Spatiotemporal Analogy],
  authors: [Chia-Hsiang Kao, Belinda Zeng, Bharath Hariharan, Menglin Jia],
  venue: [Under review],
  urls: (("arXiv", "https://arxiv.org/abs/2609.33935"), ("Project", "https://iandrover.github.io/video_analogy/")),
)

#pub("C.9",
  [Δynamics: Language-Based Representation for Inferring Rigid-Body Dynamics From Videos],
  authors: [Chia-Hsiang Kao, Cong Phuoc Huynh, Chien-Yi Wang, Noranart Vesdapunt, Stefan Stojanov, Bharath Hariharan, Oleksandr Obiednikov, Ning Zhou],
  venue: [CVPR 2026],
  urls: (("arXiv", "https://arxiv.org/abs/2605.20576"), ("Project", "https://iandrover.github.io/2026_dynamics/")),
)

#pub("C.8",
  [Towards LLM Agents for Earth Observation],
  authors: [Chia-Hsiang Kao, Wenting Zhao, Cheryl Lam, Aarush Umap, Shreelekha Revankar, Samuel Speas, Snehal Bhagat, Rajeev Datta, Cheng Perng Phoo, Utkarsh Mall, Carl Vondrick, Kavita Bala, Bharath Hariharan],
  venue: [ACL 2026 Findings; ICML 2025 TerraBytes Workshop],
  urls: (("arXiv", "https://arxiv.org/abs/2504.12110"),),
)

#pub("C.7",
  [Counter-Current Learning: A Biologically Plausible Dual Network Approach for Deep Learning],
  authors: [Chia-Hsiang Kao, Bharath Hariharan],
  venue: [NeurIPS 2024],
  urls: (("arXiv", "https://arxiv.org/abs/2409.19841"), ("Code", "https://github.com/IandRover/CCL-NeurIPS24")),
)

#pub("C.6",
  [AllClear: A Comprehensive Dataset and Benchmark for Cloud Removal in Satellite Imagery],
  authors: [Hangyu Zhou\*, Chia-Hsiang Kao\*, Cheng Perng Phoo, Utkarsh Mall, Bharath Hariharan, Kavita Bala],
  venue: [NeurIPS Datasets and Benchmarks Track 2024],
)

#pub("C.5",
  [Caduceus: Bi-Directional Equivariant Long-Range DNA Sequence Modeling],
  authors: [Yair Schiff, Chia-Hsiang Kao, Aaron Gokaslan, Tri Dao, Albert Gu, Volodymyr Kuleshov],
  venue: [ICML 2024],
)

#pub("C.4",
  [Advancing DNA Language Models: The Genomics Long-Range Benchmark],
  authors: [Chia-Hsiang Kao\*, Evan Trop\*, McKinley Polen\*, Yair Schiff\*, Bernardo P. de Almeida, Aaron Gokaslan, Thomas Pierrot, Volodymyr Kuleshov],
  venue: [AAAI 2023 Workshop; ICLR 2024 MLGenX Workshop],
)

#pub("S.1",
  [FedBug: A Bottom-Up Gradual Unfreezing Framework for Federated Learning],
  authors: [Chia-Hsiang Kao, Yu-Chiang Frank Wang],
  venue: [Preprint],
)

#pub("C.3",
  [MEG-Based Classification and Grad-CAM Visualization for Major Depressive and Bipolar Disorders with Semi-CNN],
  authors: [Chun-Chih Huang, Intan Low, Chia-Hsiang Kao, Chuan-Yu Yu, Tung-Ping Su, Jen-Chuen Hsieh, Yong-Sheng Chen, Li-Fen Chen],
  venue: [IEEE EMBC 2022],
  urls: (("Paper", "https://ieeexplore.ieee.org/abstract/document/9871238/"),),
)

#pub("C.2",
  [MAML Is a Noisy Contrastive Learner in the Classification],
  authors: [Chia-Hsiang Kao, Wei-Chen Chiu, Pin-Yu Chen],
  venue: [ICLR 2022],
)

#pub("C.1",
  [Demystifying T1-MRI to FDG18-PET Image Translation via Representational Similarity],
  authors: [Chia-Hsiang Kao, Yong-Sheng Chen, Li-Fen Chen, Wei-Chen Chiu],
  venue: [MICCAI 2021],
)

#block(above: 0.9em, text(size: 8.5pt, fill: muted)[\*: equal contribution])

= Honors & Awards

- #dated[Foundational AI PhD Fellowship, Cornell University][2025]
- #dated[Student Travel Award, MICCAI][2021]
- #dated[Undergraduate Research Fellowship, National Science and Technology Council, Taiwan][2018, 2020]
- #dated[Summer Research Fellowship, National Health Research Institutes, Taiwan][2018]

= Service

*Conference Reviewer:* NeurIPS (2021, 2024–2026), ICLR (2025–2027), ICML (2025), ECCV (2026), COLM (2026), AAAI (2025), AISTATS (2025), AutoML (2022)

*Journal Reviewer:* CVIU (2022), Computers & Electrical Engineering (2024), IEEE TETCI (2024)
