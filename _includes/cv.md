 I am a research scientist at <b>Facebook AI (FAIR)</b> in NYC and study foundational topics in <b>machine learning</b> and <b>optimization</b>, recently involving reinforcement learning, control, optimal transport, and geometry. I am interested in building learning systems that understand and interact with our world. I freely publish my research code to <a href="https://github.com/bamos">GitHub</a> as science should be open and reproducible and well-crafted software enables new frontiers. <br><br>

## <i class="fa fa-chevron-right"></i> Education

<table class="table table-hover">
  <tr>
    <td>
        <strong>Ph.D. in Computer Science</strong>
          (0.00/0.00)
        <br>
      Carnegie Mellon University | Pittsburgh, PA
        <p style='margin-top:-1em;margin-bottom:0em' markdown='1'>
        <br> *<a href="https://github.com/bamos/thesis">Differentiable Optimization-Based Modeling for Machine Learning</a>*
        <br> Advisors: <a href="http://zicokolter.com">J. Zico Kolter</a> (2016 - 2019),  <a href="https://www.cs.cmu.edu/ satya/">Mahadev Satyanarayanan</a> (2014 - 2016)
        </p>
    </td>
    <td class="col-md-2" style='text-align:right;'>2014 - 2019</td>
  </tr>
  <tr>
    <td>
        <strong>B.S. in Computer Science</strong>
          (3.99/4.00)
        <br>
      Virginia Tech | Blacksburg, VA
        <p style='margin-top:-1em;margin-bottom:0em' markdown='1'>
        <br> Advisors: <a href="https://people.cs.vt.edu/ ltw/shortvita.html">Layne Watson</a>, <a href="https://www.magnum.io/people/jules.html">Jules White</a>, <a href="https://www.ssrg.ece.vt.edu/">Binoy Ravindran</a>
        </p>
    </td>
    <td class="col-md-2" style='text-align:right;'>2011 - 2014</td>
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


## <i class="fa fa-chevron-right"></i> Publications <a href="https://github.com/bamos/cv/blob/master/publications/all.bib"><i class="fa fa-code-fork" aria-hidden="true"></i></a>

<a href="https://scholar.google.com/citations?user=d8gdZR4AAAAJ" class="btn btn-primary" style="padding: 0.3em;">
  <i class="ai ai-google-scholar"></i> Google Scholar
</a>

<h2>2021</h2>
<table class="table table-hover">

<tr id="tr-amos2020differentiable" style="background-color: #ffffd0">
<td>
    <em><a href='https://arxiv.org/abs/1909.12830' target='_blank'>The Differentiable Cross-Entropy Method</a> </em><br>
    <strong>B. Amos</strong> and D. Yarats<br>
    ICML 2020  <br>
    [9]
[<a href='javascript:;'
    onclick='$("#abs_amos2020differentiable").toggle()'>abs</a>] [<a href='https://github.com/facebookresearch/dcem' target='_blank'>code</a>]  [<a href='http://bamos.github.io/data/slides/2020.dcem.pdf' target='_blank'>slides</a>] <br>

<div id="abs_amos2020differentiable" style="text-align: justify; display: none" markdown="1">
We study the Cross-Entropy Method (CEM) for the non-convex
optimization of a continuous and parameterized
objective function and introduce a differentiable
variant (DCEM) that enables us to differentiate the
output of CEM with respect to the objective
function's parameters. In the machine learning
setting this brings CEM inside of the end-to-end
learning pipeline where this has otherwise been
impossible. We show applications in a synthetic
energy-based structured prediction task and in
non-convex continuous control. In the control
setting we show on the simulated cheetah and walker
tasks that we can embed their optimal action
sequences with DCEM and then use policy optimization
to fine-tune components of the controller as a step
towards combining model-based and model-free RL.
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
    [<a href='https://github.com/facebookresearch/svg' target='_blank'>code</a>]  
    [<a href='http://bamos.github.io/data/slides/2021.svg.pdf' target='_blank'>slides</a>]  
    [<a href='https://youtu.be/ABS40GW7Ekk?t=5393' target='_blank'>talk</a>] <br>

<div id="abs_Kao2019Unravelling" style="text-align: justify; display: none" markdown="1">
Model-based reinforcement learning approaches add explicit domain
knowledge to agents in hopes of improving the
sample-efficiency in comparison to model-free
agents. However, in practice model-based methods are
unable to achieve the same asymptotic performance on
challenging continuous control tasks due to the
complexity of learning and controlling an explicit
world model. In this paper we investigate the
stochastic value gradient (SVG), which is a
well-known family of methods for controlling
continuous systems which includes model-based
approaches that distill a model-based value
expansion into a model-free policy. We consider a
variant of the model-based SVG that scales to larger
systems and uses 1) an entropy regularization to
help with exploration, 2) a learned deterministic
world model to improve the short-horizon value
estimate, and 3) a learned model-free value estimate
after the model's rollout. This SVG variation
captures the model-free soft actor-critic method as
an instance when the model rollout horizon is zero, and otherwise uses short-horizon model rollouts to
improve the value estimate for the policy update. We
surpass the asymptotic performance of other
model-based methods on the proprioceptive MuJoCo
locomotion tasks from the OpenAI gym, including a
humanoid. We notably achieve these results with a
simple deterministic world model without requiring
an ensemble.
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
