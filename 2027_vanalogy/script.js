// === Data ===
const TASKS = {
  gg: [
    {
      id: 'event',
      title: 'Event-Guided Generation',
      description: 'Generate RGB video from first-frame image and event camera data visualization (red=OFF, blue=ON polarity).',
      note: 'This is a zero-shot modality — the model has never seen event camera data during training. In this Supplementary, event camera data is simulated.',
      grid: '2x4',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'flow',
      title: 'Flow-Guided Generation',
      description: 'Generate RGB video from a first frame and optical flow color-wheel visualization.',
      grid: '2x4',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'points',
      title: 'Point-Guided Generation',
      description: 'Generate RGB video from 16 spatially-sampled point prompts and the initial frame.',
      note: 'Sparse point prompts only partially constrain motion; ambiguous regions remain weakly specified.',
      grid: '2x4',
      videos: [1, 2, 3, 4],
    },
    // {
    //   id: 'tempdiff',
    //   title: 'Temporal-Difference Guided Generation',
    //   description: 'Generate video conditioned on temporal-difference signals between frames.',
    //   grid: '2x4',
    //   videos: [1, 2, 3, 4],
    // },
    {
      id: 'complete_half_depth',
      title: 'Complete RGB from Half Depth',
      description: 'Complete RGB output when only partial depth information is observed in the demonstration.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    // {
    //   id: 'complete_half_flow',
    //   title: 'Complete RGB from Half Flow',
    //   description: 'Complete RGB output when only partial optical-flow information is observed.',
    //   grid: '2x3',
    //   videos: [1, 2, 3, 4],
    // },
    {
      id: 'est_depth_flow_split',
      title: 'Estimate Depth & Flow (Split)',
      description: 'Jointly infer depth and flow under a split prediction setup.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'est_depth_from_flow',
      title: 'Estimate Depth from Flow',
      description: 'Infer depth solely from flow-based demonstrations.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'est_flow_from_depth',
      title: 'Estimate Flow from Depth',
      description: 'Infer optical flow from depth-only demonstrations.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    // {
    //   id: 'depth',
    //   title: 'Depth-Guided Generation',
    //   description: 'In-distribution reference: generate video conditioned on depth maps (seen during training).',
    //   grid: '2x4',
    //   videos: [1, 2, 3, 4],
    // },
    // {
    //   id: 'edge',
    //   title: 'Edge-Guided Generation',
    //   description: 'In-distribution reference: generate video conditioned on edge maps (seen during training).',
    //   grid: '2x4',
    //   videos: [1, 2, 3, 4],
    // },
  ],
  vm: [
    // {
    //   id: 'frame_interp_easy',
    //   title: 'Frame Interpolation (Easy)',
    //   description: 'Temporal interpolation with N=16 retained anchor frames.',
    //   grid: '2x3',
    //   videos: [1, 2, 3, 4],
    // },
    // {
    //   id: 'frame_interp',
    //   title: 'Frame Interpolation',
    //   description: 'Temporal interpolation with N=8 retained anchor frames.',
    //   grid: '2x3',
    //   videos: [1, 2, 3, 4],
    // },
    {
      id: 'inpaint_in3d',
      title: '3D Inpainting',
      description: 'Fill missing 3D regions defined by sampled bounding masks.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'inpaint_out3d',
      title: '3D Outpainting',
      description: 'Synthesize unseen 3D regions from complementary (inverted) masks.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'jigsaw_apply',
      title: 'Jigsaw Apply',
      description: 'Apply a 2D spatial jigsaw tile permutation to a new query video.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'jigsaw_solve',
      title: 'Jigsaw Solve',
      description: 'Recover correct spatial ordering from a shuffled tile-grid video.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'lowlight',
      title: 'Low-Light Enhancement',
      description: 'Enhance severely underexposed videos using visual analogy alone.',
      grid: '2x3',
      videos: [1, 2, 3, 4],
    },
  ],
  cc: [
    {
      id: 'camera_motion_transfer',
      title: 'Camera Motion Transfer',
      description: 'Animate a static frame by mimicking the camera trajectory from the demonstration.',
      grid: '2x2',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'camera_view_same',
      title: 'Camera View Transfer (Same Relative View)',
      description: 'Easier setting: demo input and query input share the same relative pose relationship.',
      grid: '2x2',
      videos: [1, 2, 3, 4],
    },
    {
      id: 'camera_view_diff',
      title: 'Camera View Transfer (Different Relative View)',
      description: 'Harder setting: demo and query do not share the same relative pose.',
      grid: '2x2',
      videos: [1, 2, 3, 4],
    },
  ],
};

// Curated highlights: grouped by grid type so same-row items match aspect ratio
const HIGHLIGHTS = [
  // Row 1: 2x4 (wide) videos
  { category: 'gg', task: 'event', video: 1, label: 'Event-Guided Generation', grid: '2x4' },
  { category: 'gg', task: 'flow', video: 1, label: 'Flow-Guided Generation', grid: '2x4' },
  // Row 2: 2x3 videos
  { category: 'vm', task: 'jigsaw_solve', video: 1, label: 'Jigsaw Solve (held-out task)', grid: '2x3' },
  { category: 'vm', task: 'lowlight', video: 1, label: 'Low-Light Enhancement', grid: '2x3' },
  // Row 3: 2x2 (tall) videos
  { category: 'cc', task: 'camera_motion_transfer', video: 1, label: 'Camera Motion Transfer', grid: '2x2' },
  { category: 'cc', task: 'camera_view_diff', video: 1, label: 'Camera View Transfer (hard)', grid: '2x2' },
];

// === Helpers ===
function resolvedTaskId(taskId) {
  if (taskId === 'frame_interp') return 'frame_interp_med';
  return taskId;
}

function videoPath(category, taskId, num) {
  const folder = resolvedTaskId(taskId);
  return `videos/${category}/${folder}/${String(num).padStart(2, '0')}.mp4`;
}

function posterPath(category, taskId, num) {
  const folder = resolvedTaskId(taskId);
  return `videos/${category}/${folder}/${String(num).padStart(2, '0')}.jpg`;
}

function gridClass(grid) {
  return `grid-${grid}`;
}

function arClass(grid) {
  return `ar-${grid}`;
}

const chevronSVG = `<svg class="chevron" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="9 18 15 12 9 6"></polyline></svg>`;

// === Build highlights ===
function buildHighlights() {
  const container = document.getElementById('highlights-grid');
  let currentGrid = null;
  let currentRow = null;

  HIGHLIGHTS.forEach(h => {
    // Group into rows by grid type
    if (h.grid !== currentGrid) {
      currentGrid = h.grid;
      currentRow = document.createElement('div');
      currentRow.className = `highlights-row highlights-row-${h.grid}`;
      container.appendChild(currentRow);
    }

    const card = document.createElement('div');
    card.className = `highlight-card ${arClass(h.grid)}`;
    const video = document.createElement('video');
    video.poster = posterPath(h.category, h.task, h.video);
    video.muted = true;
    video.loop = true;
    video.playsInline = true;
    video.preload = 'none';
    // Load video src on first interaction
    video.addEventListener('mouseenter', () => {
      if (!video.src) video.src = videoPath(h.category, h.task, h.video);
      video.play();
    });
    video.addEventListener('mouseleave', () => { video.pause(); video.currentTime = 0; });
    video.addEventListener('click', () => {
      if (!video.src) video.src = videoPath(h.category, h.task, h.video);
      video.paused ? video.play() : video.pause();
    });
    const label = document.createElement('div');
    label.className = 'highlight-label';
    label.textContent = h.label;
    card.appendChild(video);
    card.appendChild(label);
    currentRow.appendChild(card);
  });
}

// === Build task lists ===
function buildTaskList(category, containerId) {
  const container = document.getElementById(containerId);
  const tasks = TASKS[category];

  tasks.forEach((task) => {
    const item = document.createElement('div');
    item.className = 'task-item';

    // Header
    const header = document.createElement('div');
    header.className = 'task-header';
    header.innerHTML = chevronSVG;

    const name = document.createElement('span');
    name.className = 'task-name';
    name.textContent = task.title;
    header.appendChild(name);

    // Body (created empty, populated on first expand)
    const body = document.createElement('div');
    body.className = 'task-body';
    let populated = false;

    header.addEventListener('click', () => {
      item.classList.toggle('open');
      // Lazy-create video grid on first expand
      if (item.classList.contains('open') && !populated) {
        populated = true;

        const desc = document.createElement('p');
        desc.className = 'task-description';
        desc.textContent = task.description;
        body.appendChild(desc);

        if (task.note) {
          const note = document.createElement('div');
          note.className = 'task-note';
          note.textContent = task.note;
          body.appendChild(note);
        }

        const grid = document.createElement('div');
        grid.className = `video-grid ${gridClass(task.grid)}`;
        if (category === 'cc') grid.classList.add('camera-control-grid');

        task.videos.forEach(num => {
          const cell = document.createElement('div');
          cell.className = `video-cell ${arClass(task.grid)}`;
          const video = document.createElement('video');
          video.src = videoPath(category, task.id, num);
          video.poster = posterPath(category, task.id, num);
          video.muted = true;
          video.loop = true;
          video.playsInline = true;
          video.preload = 'none';
          video.controls = false;
          video.addEventListener('mouseenter', () => {
            video.controls = false;
            video.play();
          });
          video.addEventListener('click', () => {
            video.controls = true;
            if (video.paused) video.play();
          });
          video.addEventListener('mouseleave', () => {
            video.controls = false;
            video.pause();
            video.currentTime = 0;
          });
          cell.appendChild(video);
          grid.appendChild(cell);
        });

        body.appendChild(grid);
      }
    });

    item.appendChild(header);
    item.appendChild(body);
    container.appendChild(item);
  });
}

// === Init ===
document.addEventListener('DOMContentLoaded', () => {
  buildHighlights();
  buildTaskList('gg', 'task-list-gg');
  buildTaskList('vm', 'task-list-vm');
  buildTaskList('cc', 'task-list-cc');
});
