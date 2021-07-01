 I am medical student at Yang Ming Chiao Tung University with interests in machine learning, computer vision and medical image analysis, recently involving meta-learing and self-supervised contrastive learning.<br><br>

## <i class="fa fa-chevron-right"></i> Education

<table class="table table-hover">
  <tr>
    <td>
        <strong>M.D.</strong>
          <!-- (0.00/0.00) -->
        <br>
      National Yang Ming Chiao Tung University | Taipei, Taiwan
        <p style='margin-top:-1em;margin-bottom:0em' markdown='1'>
        <!-- <br> *<a href="https://github.com/bamos/thesis">Differentiable Optimization-Based Modeling for Machine Learning</a>* -->
        <br> Advisors:
        <a href="http://zicokolter.com">JLi-Fen, Chen </a> (2017 - 2020),  
        <a href="https://www.cs.cmu.edu/satya/"> Wei-Chen Chiu</a> (2020 - 2021),
        <a href="http://zicokolter.com">Pin-Yu Chen</a> (2021)  
        </p>
    </td>
    <td class="col-md-2" style='text-align:right;'>2015 - 2022</td>
  </tr>
</table>


## <i class="fa fa-chevron-right"></i> Research Internships
<table class="table table-hover">
<tr>
  <td>
<p markdown="1" style='margin: 0'>
<strong>Intel Labs</strong>
| Santa Clara, CA
| Host: <a href="http://vladlen.info/">Vladlen Koltun</a>
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
<p markdown="1" style='margin: 0'>
<strong>Google DeepMind</strong>
| London, UK
| Hosts: <a href="http://mdenil.com/">Misha Denil</a> and <a href="https://scholar.google.com/citations?user=nzEluBwAAAAJ">Nando de Freitas</a>
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
<p markdown="1" style='margin: 0'>
<strong>Adobe Research</strong>
| San Jose, CA
| Host: <a href="https://research.adobe.com/person/david-tompkins/">David Tompkins</a>
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'>2014</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Honors & Awards
<table class="table table-hover">
<tr>
  <td>
    NSF Graduate Research Fellowship
  </td>
  <td class='col-md-2' style='text-align:right;'>2016 - 2019</td>
</tr>
<tr>
  <td>
    Nine undergraduate scholarships
    <br><p style="color:grey;font-size:1.2rem">Roanoke County Public Schools Engineering,
Salem-Roanoke County Chamber of Commerce,
Papa John's,
Scottish Rite of Freemasonry,
VT Intelligence Community Conter for Academic Excellence,
VT Pamplin Leader,
VT Benjamin F. Bock, VT Gay B. Shober, VT I. Luck Gravett
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'>2011 - 2014</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Publications
<!-- <a href="https://github.com/bamos/cv/blob/master/publications/all.bib"> <i class="fa fa-code-fork" aria-hidden="true"></i></a> -->

<!-- <a href="https://scholar.google.com/citations?user=d8gdZR4AAAAJ" class="btn btn-primary" style="padding: 0.3em;">
  <i class="ai ai-google-scholar"></i> Google Scholar
</a> -->

<h2>2021</h2>
<table class="table table-hover">

<tr id="tr-kao2021maml" style="background-color: #ffffd0">
<td>
    <em><a href='https://arxiv.org/abs/2106.15367' target='_blank'>MAML is a Noisy Contrastive Learner</a> </em><br>
    <strong>Chia-Hsiang Kao</strong> Wei-Chen Chiu, and Pin-Yu Chen<br>
    preprint 2020 <br>
    [2]
[<a href='javascript:;'
    onclick='$("#abs_kao2021maml").toggle()'>abs</a>]
     <!-- [<a href='https://github.com/facebookresearch/dcem' target='_blank'>code</a>]  -->
    <!-- [<a href='http://bamos.github.io/data/slides/2020.dcem.pdf' target='_blank'>slides</a>] <br> -->

<div id="abs_kao2021maml" style="text-align: justify; display: none" markdown="1">
Model-agnostic meta-learning (MAML) is one of the most popular and widely-adopted meta-learning algorithms nowadays, which achieves remarkable success in various learning problems.
Yet, with the unique design of nested inner-loop and outer-loop updates which respectively govern the task-specific and meta-model-centric learning,
the underlying learning objective of MAML still remains implicit and thus impedes a more straightforward understanding of it.
In this paper, we provide a new perspective to the working mechanism of MAML and discover that: MAML is analogous to a meta-learner using a supervised contrastive objective function, where the query features are pulled towards the support features of the same class and against those of different classes, in which such contrastiveness is experimentally verified via an analysis based on the cosine similarity. Moreover, our analysis reveals that the vanilla MAML algorithm has an undesirable interference term originating from the random initialization and the cross-task interaction. We therefore propose a simple but effective technique, zeroing trick, to alleviate such interference, where the extensive experiments are then conducted on both miniImagenet and Omniglot datasets to demonstrate the consistent improvement brought by our proposed technique thus well validating its effectiveness.
</div>

</td>
</tr>

<tr id="tr-kao2021demystifying" style="background-color: #ffffd0">
<td>
    <em>Demystifying T1-MRI to FDG18-PET Image Translation via Representational Similarity</em><br>
    <strong>Chia-Hsiang Kao</strong> Wei-Chen Chiu, and Pin-Yu Chen<br>
    preprint 2020 <br>
    [2]
[<a href='javascript:;'
    onclick='$("#abs_kao2021demystifying").toggle()'>abs</a>]
     <!-- [<a href='https://github.com/facebookresearch/dcem' target='_blank'>code</a>]  -->
    <!-- [<a href='http://bamos.github.io/data/slides/2020.dcem.pdf' target='_blank'>slides</a>] <br> -->

<div id="abs_kao2021demystifying" style="text-align: justify; display: none" markdown="1">
Recent development of image-to-image translation techniques has enabled the generation of rare medical images (e.g., PET) from common ones (e.g., MRI). Beyond the potential benefits of the reduction in scanning time, acquisition cost, and radiation exposure risks, the translation models in themselves are inscrutable black boxes. In this work, we propose two approaches to demystify the image translation process, where we particularly focus on the T1-MRI to PET translation. First, we adopt the representational similarity analysis and discover that the process of T1-MR to PET image translation includes the stages of brain tissue segmentation and brain region recognition, which unravels the relationship between the structural and functional neuroimaging data. Second, based on our findings, an Explainable and Simplified Image Translation (ESIT) model is proposed to demonstrate the capability of deep learning models for extracting gray matter volume information and identifying brain regions related to normal aging and Alzheimer's disease, which untangles the biological plausibility hidden in deep learning models.
</div>

</td>
</tr>


</table>

<h2>2019</h2>
<table class="table table-hover">
<tr id="tr-Kao2019Unravelling" style="background-color: #ffffd0">
<td>
    <em><a href='https://ieeexplore.ieee.org/document/8716917' target='_blank'>Unravelling the Spatio-Temporal Neurodynamics of Rhythm Encoding-Reproduction Networks by a Novel fMRI Autoencoder</a> </em><br>
    <strong>Chia-Hsiang Kao</strong>, Ching-Ju Yang, Li-Kai Cheng, Hsin-Yen Yu, Yong-Sheng Chen, Jen-Chuen Hsieh, and Li-Fen Chen<br>
    NER 2019 <br>
    [1]
[<a href='javascript:;'
    onclick='$("#abs_Kao2019Unravelling").toggle()'>abs</a>]
    <!-- [<a href='https://github.com/facebookresearch/svg' target='_blank'>code</a>]   -->
    <!-- [<a href='http://bamos.github.io/data/slides/2021.svg.pdf' target='_blank'>slides</a>]   -->
    <!-- [<a href='https://youtu.be/ABS40GW7Ekk?t=5393' target='_blank'>talk</a>] <br> -->

<div id="abs_Kao2019Unravelling" style="text-align: justify; display: none" markdown="1">
Visualization of how the external stimuli are processed dynamically in the brain would help understanding the neural mechanisms of functional segregation and integration. The present study proposed a novel temporal autoencoder to estimate the neurodynamics of functional networks involved in rhythm encoding and reproduction. A fully-connected two-layer autoencoder was proposed to estimate the temporal dynamics in functional magnetic resonance image recordings. By minimizing the reconstruction error between the predicted next time sample and the corresponding ground truth next time sample, the system was trained to extract spatial patterns of functional network dynamics without any supervision effort. The results showed that the proposed model was able to extract the spatial patterns of task-related functional dynamics as well as the interactions between them. Our findings suggest that artificial neural networks would provide a useful tool to resolve temporal dynamics of neural processing in the human brain.
</div>

</td>
</tr>

</table>

## <i class="fa fa-chevron-right"></i> Repositories
<table class="table table-hover">
<tr>
  <td>
    <a href="https://github.com/facebookresearch/mbrl-lib">facebookresearch/mbrl-lib</a> |
    <i class="fa fas fa-star"></i> 377 |
    <em>Model-based reinforcement learning library</em>
    <!--  -->
    <!--     facebookresearch/mbrl-lib  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2021</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/facebookresearch/dcem">facebookresearch/dcem</a> |
    <i class="fa fas fa-star"></i> 77 |
    <em>Differentiable Cross-Entropy Method Experiments</em>
    <!--  -->
    <!--     facebookresearch/dcem  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/facebookresearch/higher">facebookresearch/higher</a> |
    <i class="fa fas fa-star"></i> 1.1k |
    <em>PyTorch higher-order gradient and optimization library</em>
    <!--  -->
    <!--     facebookresearch/higher  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/thesis">bamos/thesis</a> |
    <i class="fa fas fa-star"></i> 238 |
    <em>Ph.D. Thesis LaTeX source code</em>
    <!--  -->
    <!--     bamos/thesis  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/cvxgrp/cvxpylayers">cvxgrp/cvxpylayers</a> |
    <i class="fa fas fa-star"></i> 862 |
    <em>Differentiable convex optimization layers</em>
    <!--  -->
    <!--     cvxgrp/cvxpylayers  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/locuslab/mpc.pytorch">locuslab/mpc.pytorch</a> |
    <i class="fa fas fa-star"></i> 436 |
    <em>Differentiable model-predictive control</em>
    <!--  -->
    <!--     locuslab/mpc.pytorch  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/locuslab/icnn">locuslab/icnn</a> |
    <i class="fa fas fa-star"></i> 212 |
    <em>Input Convex Neural Network Experiments</em>
    <!--  -->
    <!--     locuslab/icnn  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/locuslab/optnet">locuslab/optnet</a> |
    <i class="fa fas fa-star"></i> 360 |
    <em>OptNet Experiments</em>
    <!--  -->
    <!--     locuslab/optnet  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/locuslab/qpth">locuslab/qpth</a> |
    <i class="fa fas fa-star"></i> 461 |
    <em>Differentiable PyTorch QP solver</em>
    <!--  -->
    <!--     locuslab/qpth  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/densenet.pytorch">bamos/densenet.pytorch</a> |
    <i class="fa fas fa-star"></i> 681 |
    <em>PyTorch DenseNet implementation</em>
    <!--  -->
    <!--     bamos/densenet.pytorch  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/block">bamos/block</a> |
    <i class="fa fas fa-star"></i> 253 |
    <em>Intelligent block matrix constructions</em>
    <!--  -->
    <!--     bamos/block  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/setGPU">bamos/setGPU</a> |
    <i class="fa fas fa-star"></i> 92 |
    <em>Automatically use the least-loaded GPU</em>
    <!--  -->
    <!--     bamos/setGPU  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2017</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/dcgan-completion.tensorflow">bamos/dcgan-completion.tensorflow</a> |
    <i class="fa fas fa-star"></i> 1.3k |
    <em>Image completion with GANs</em>
    <!--  -->
    <!--     bamos/dcgan-completion.tensorflow  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2016</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/cmusatyalab/openface">cmusatyalab/openface</a> |
    <i class="fa fas fa-star"></i> 13.9k |
    <em>Face recognition with deep neural networks</em>
    <!--  -->
    <!--     cmusatyalab/openface  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2015</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/zsh-history-analysis">bamos/zsh-history-analysis</a> |
    <i class="fa fas fa-star"></i> 160 |
    <em>Analyze and plot your zsh history</em>
    <!--  -->
    <!--     bamos/zsh-history-analysis  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2014</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/cv">bamos/cv</a> |
    <i class="fa fas fa-star"></i> 307 |
    <em>My YAML/LaTeX/Markdown cv</em>
    <!--  -->
    <!--     bamos/cv  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2013</td>
</tr>
<tr>
  <td>
    <a href="https://github.com/bamos/dotfiles">bamos/dotfiles</a> |
    <i class="fa fas fa-star"></i> 222 |
    <em>Linux, mutt, xmonad, i3, vim, emacs, zsh</em>
    <!--  -->
    <!--     bamos/dotfiles  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2012</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Invited Talks
<table class="table table-hover">
<tr>
  <td>
        Max Planck Institute for Intelligent Systems (Tübingen) Seminar
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        Montreal Institute for Learning Algorithms Seminar
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="https://anucvml.github.io/ddn-eccvt2020/">ECCV Deep Declarative Networks Tutorial</a>
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="https://anucvml.github.io/ddn-cvprw2020/">CVPR Deep Declarative Networks Workshop</a>
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="https://sites.google.com/view/cs-159-spring-2020/lectures">Caltech CS 159, Guest Lecture</a>
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        SIAM MDS Minisymposium on Learning Parameterized Energy Minimization Models
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        New York University CILVR Seminar
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
        INFORMS Session on Prediction and Optimization
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
        Facebook AI Research
  </td>
  <td class='col-md-1' style='text-align:right;'>2019</td>
</tr>
<tr>
  <td>
        ISMP Session on Machine Learning and Optimization
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        Google Brain
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        Bosch Center for AI
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        Waymo Research
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        Tesla AI
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        NVIDIA Robotics
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        Salesforce Research
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        OpenAI
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        NNAISENSE
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Interns and Students
<table class="table table-hover">
<tr>
  <td>
        <a href="https://samcohen16.github.io/">Samuel Cohen</a> (visiting FAIR from UCL)
  </td>
  <td class='col-md-1' style='text-align:right;'>2021</td>
</tr>
<tr>
  <td>
        <a href="https://eugenevinitsky.github.io/">Eugene Vinitsky</a> (visiting FAIR from Berkeley)
  </td>
  <td class='col-md-1' style='text-align:right;'>2021</td>
</tr>
<tr>
  <td>
        <a href="https://www.aaronlou.com/">Aaron Lou</a> (visiting FAIR from Cornell)
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="http://www.cs.toronto.edu/~rtqichen/">Ricky Chen</a> (visiting FAIR from Toronto)
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="http://www.cs.cmu.edu/~pliang/">Paul Liang</a> (visiting FAIR from CMU)
  </td>
  <td class='col-md-1' style='text-align:right;'>2020</td>
</tr>
<tr>
  <td>
        <a href="https://phillipkwang.com/">Phillip Wang</a> (at CMU, now: CEO at <a href="https://gather.town/">Gather</a>)
  </td>
  <td class='col-md-1' style='text-align:right;'>2018</td>
</tr>
<tr>
  <td>
        <a href="https://leix28.github.io">Lei Xu</a> (visiting CMU from Tsinghua, now: Ph.D. student at MIT)
  </td>
  <td class='col-md-1' style='text-align:right;'>2016</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Professional Activities
<table class="table table-hover">
<tr>
  <td>
      Reviewing: AAAI, ICML, NeurIPS, ICLR*, ICCV, CVPR, ICRA
  <br><p style="color:grey;font-size:1.2rem">*Outstanding reviewer</p>
  <td class='col-md-2' style='text-align:right;'></td>
  </td>
</tr>
<tr>
  <td>
     <a href="https://sites.google.com/view/lmca2020/home">NeurIPS Learning Meets Combinatorial Optimization Workshop Organizer</a>
  <td class='col-md-2' style='text-align:right;'>2020</td>
  </td>
</tr>
<tr>
  <td>
     <a href="https://anucvml.github.io/ddn-cvprw2020/">CVPR Deep Declarative Workshop Organizer</a>
  <td class='col-md-2' style='text-align:right;'>2020</td>
  </td>
</tr>
<tr>
  <td>
     <a href="https://anucvml.github.io/ddn-eccvt2020/">ECCV Deep Declarative Tutorial Organizer</a>
  <td class='col-md-2' style='text-align:right;'>2020</td>
  </td>
</tr>
<tr>
  <td>
      CMU CSD MS Admissions
  <td class='col-md-2' style='text-align:right;'>2014 - 2015</td>
  </td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Teaching
<table class="table table-hover">
<tr>
  <td><strong>Graduate AI</strong> (CMU 15-780), TA</td>
  <td class='col-md-1' style='text-align:right;'>S2017</td>
</tr>
<tr>
  <td><strong>Distributed Systems</strong> (CMU 15-440/640), TA</td>
  <td class='col-md-1' style='text-align:right;'>S2016</td>
</tr>
<tr>
  <td><strong>Software Design and Data Structures</strong> (VT CS2114), TA</td>
  <td class='col-md-1' style='text-align:right;'>S2013</td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Skills
<table class="table table-hover">
<tr>
  <td class='col-md-2'>Languages</td>
  <td>
C, C++, Fortran, Haskell, Java, Lua, Make, Mathematica, Python, R, Scala
  </td>
</tr>
<tr>
  <td class='col-md-2'>Frameworks</td>
  <td>
JAX, NumPy, Pandas, PyTorch, SciPy, TensorFlow, Torch7
  </td>
</tr>
<tr>
  <td class='col-md-2'>Tools</td>
  <td>
Linux, emacs, vim, evil, org, mu4e, xmonad, i3, git, tmux, zsh
  </td>
</tr>
</table>
