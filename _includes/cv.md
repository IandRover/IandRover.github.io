#### Introduction
Chia-Hsiang Kao is currently a medical student at National Yang Ming Chiao Tung University, advised by Prof. <a href="https://walonchiu.github.io/"> Wei-Chen Chiu</a> and Dr. <a href="https://sites.google.com/site/pinyuchenpage">Pin-Yu Chen</a> (IBM Researcher, MIT-IBM Watson AI Lab).
<!-- The ultimate goal of his research is to further the trustworthyness, understanding and credibility of deep learning models and to foster better health care system and service. -->
His research interests include machine learning, and its healthcare (e.g. meta-learining, robustness, trustworthyness, small-datasets). He previously worked on medical image analysis and computer vision, with recent direction of Meta-Learning and Adversarial Learning.

He is now looking for MS/PhD in Computer Science (2022 Fall). <br><br>

#### Research Experience
His research direction has always remained the same: diving into the fundamental problems to understand the inner working mechanisms of deep learning models, and to apply the (novel) understanding to practical issues.
- When he was an medical intern in Taipei Veterans General Hospital in Taiwan, he was intrigued by the increasing trend in using GAN to translate medical images. But he then found none of the current work discusses the reason why deep learning models can achieve so, and they rather treat the models as black-boxes. After applying visualization tools (GradCAM, filter visualization, building additional attention modules), he proposed that the models may implicitly perform brain region and brain tissue recognition. This is the first paper aimming to explore the behavior of medical image translation model.
- Currently under review in ICLR 2022, his new work turned to MAML (model-agnostic meta learning algorithm) and he found that the bilevel-optimization procedure of MAML can be understood from a supervised contrastive learning point of view. Based on the theoretical results, he further improved the MAML algorithm by introducing a zeroing trick.

Recently, he is exploring the adversarial robustness, where he finds that the adversarially-trained models may (implicitly) pretend to be robust by being overly confident. He is now working on a formal definition of the phenomenon and connecting this to the potential benefits of label smoothing and label squeezing.

He thanks all the supervisors for their inspiring suggestion and the reviewers for their insightful comments. These studies cannot be done without their engagements. <br><br>

<!-- #### Future Plan -->
<!-- He is applying for (2022 fall) PHD. -->
<!-- Although he does not have a CS background, he is acquainted with deep learning skills and basic mathematical analysis skills.  -->
<!-- He is currently looking for labs that welcome people from interdisciplinary background. <br><br> -->

<!-- <br> -->

### <i class="fa fa-chevron-right"></i> Education
<table class="table table-hover">
  <tr>
    <td>
        <strong>Doctor of Medicine</strong> (M.D.)
        <br>
      National Yang Ming Chiao Tung University | Taipei, Taiwan
        <p style='margin-top:-1em;margin-bottom:0em' markdown='1'>
        <br> Advisors:
        <a href="https://scholar.google.com.tw/citations?user=BJjT9kAAAAAJ">Li-Fen, Chen </a> (2017 - 2020), <a href="https://walonchiu.github.io/"> Wei-Chen Chiu</a> (2020 - 2021), <a href="https://sites.google.com/site/pinyuchenpage">Pin-Yu Chen</a> (2021)  
        </p>
    </td>
    <td class="col-md-2" style='text-align:right;'>2015 - 2022</td>
  </tr>
</table>


### <i class="fa fa-chevron-right"></i> Research Internship
<table class="table table-hover">
<tr>
  <td>
<p markdown="1" style='margin: 0'>
<strong>Institute of Information Science, Academia Sinica</strong><br>
 Taipei, Taiwan
| Host: <a href="https://homepage.iis.sinica.edu.tw/pages/mcc/index_en.html">Meng Chang, Chen</a>
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'>2017</td>
</tr>
<!-- <tr>
  <td>
  </td>
  <td class='col-md-2' style='text-align:right;'>2014</td>
</tr> -->
</table>

### <i class="fa fa-chevron-right"></i> Courses
<table class="table table-hover">

<tr>
  <td bgcolor="#ffffce"><strong>Course name</strong></td>
  <td bgcolor="#ffffce" style='text-align:center;'><strong>Score</strong></td>
</tr>

<tr>
  <td><strong>Introduction to Analysis, Honor Class <br> </strong>Institute of Mathematics, NYCU</td>
  <td style='text-align:center;'>A-</td>
</tr>

<tr>
  <td><strong>Advanced Probability <br> </strong>Institute of Mathematics, NYCU</td>
  <td style='text-align:center;'>A-</td>
</tr>

<tr>
  <td><strong>Reinforcement Learning</strong></td>
  <td style='text-align:center;'>A+</td>
</tr>

<tr>
  <td><strong>Machine Learning</strong></td>
  <td style='text-align:center;'>A+</td>
</tr>

<tr>
  <td><strong>Molecular Simulation: Concepts and Applications</strong></td>
  <td style='text-align:center;'>A+</td>
</tr>

<tr>
  <td><strong>Theory of Computability</strong></td>
  <td style='text-align:center;'>A+</td>
</tr>

<tr>
  <td><strong>Introduction to Computer Science</strong></td>
  <td style='text-align:center;'>A+</td>
</tr>


</table>


### <i class="fa fa-chevron-right"></i> Honors & Awards
<table class="table table-hover">
<!-- a MICCAI Student Travel Award -->
<tr>
  <td>
    <strong>Student Travel Award</strong>, MICCAI
    <br>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2021 </td>
</tr>
<tr>
  <td>
    <strong>College Student Research Scholarship</strong>, MOST, Taiwan
    <br>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2020 </td>
</tr>
<tr>
  <td>
    <strong>Second Prize</strong>, Taiwan Brain Tumor Segmentation Challenge, Taiwan
  </td>
  <td class='col-md-2' style='text-align:right;'> 2019 </td>
</tr>
<tr>
  <td>
    <strong>College Student Research Scholarship</strong>, MOST, Taiwan
    <br>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2018 </td>
</tr>
<tr>
  <td>
    <strong>Gold Medal</strong>, International Genetically Engineered Machine Competition, Boston
    <br>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2016 </td>
</tr>
</table>


### <i class="fa fa-chevron-right"></i> Publications

<h4>2021</h4>
<table class="table table-hover">

<tr id="tr-kao2021maml">
<td>
    <em>MAML is a Noisy Contrastive Learner </em> <br>
    [Preprint] [<a href='https://arxiv.org/abs/2106.15367' target='_blank'>arxiv</a>] [<a href='javascript:;'
        onclick='$("#abs_kao2021maml").toggle()'>abs</a>]
    <br>
    <strong>Chia-Hsiang Kao</strong>, Wei-Chen Chiu, and Pin-Yu Chen<br>

<div id="abs_kao2021maml" style="text-align: justify; display: none" markdown="1">
Model-agnostic meta-learning (MAML) is one of the most popular and widely-adopted meta-learning algorithms nowadays, which achieves remarkable success in various learning problems.
Yet, with the unique design of nested inner-loop and outer-loop updates which respectively govern the task-specific and meta-model-centric learning,
the underlying learning objective of MAML still remains implicit and thus impedes a more straightforward understanding of it.
In this paper, we provide a new perspective to the working mechanism of MAML and discover that: MAML is analogous to a meta-learner using a supervised contrastive objective function, where the query features are pulled towards the support features of the same class and against those of different classes, in which such contrastiveness is experimentally verified via an analysis based on the cosine similarity. Moreover, our analysis reveals that the vanilla MAML algorithm has an undesirable interference term originating from the random initialization and the cross-task interaction. We therefore propose a simple but effective technique, zeroing trick, to alleviate such interference, where the extensive experiments are then conducted on both miniImagenet and Omniglot datasets to demonstrate the consistent improvement brought by our proposed technique thus well validating its effectiveness.
</div>

</td>
</tr>

<tr id="tr-kao2021demystifying">
<td>
    <em>Demystifying T1-MRI to FDG18-PET Image Translation via Representational Similarity</em> <br>
    MICCAI 2021 [Oral presentation]     [<a href="data/papers/MICCAI2021_Demystifying__camera_ready___update_1_.pdf">pdf</a>] [<a href='javascript:;'
    onclick='$("#abs_kao2021demystifying").toggle()'>abs</a>] <br>
    <strong>Chia-Hsiang Kao</strong>, Yong-Sheng Chen, Li-Fen Chen, Wei-Chen Chiu<br>

<div id="abs_kao2021demystifying" style="text-align: justify; display: none" markdown="1">
Recent development of image-to-image translation techniques has enabled the generation of rare medical images (e.g., PET) from common ones (e.g., MRI). Beyond the potential benefits of the reduction in scanning time, acquisition cost, and radiation exposure risks, the translation models in themselves are inscrutable black boxes. In this work, we propose two approaches to demystify the image translation process, where we particularly focus on the T1-MRI to PET translation. First, we adopt the representational similarity analysis and discover that the process of T1-MR to PET image translation includes the stages of brain tissue segmentation and brain region recognition, which unravels the relationship between the structural and functional neuroimaging data. Second, based on our findings, an Explainable and Simplified Image Translation (ESIT) model is proposed to demonstrate the capability of deep learning models for extracting gray matter volume information and identifying brain regions related to normal aging and Alzheimer's disease, which untangles the biological plausibility hidden in deep learning models.
</div>

</td>
</tr>


</table>

<h4>2019</h4>
<table class="table table-hover">
<tr id="tr-Kao2019Unravelling">
<td>
    <em><a href='https://ieeexplore.ieee.org/document/8716917' target='_blank'>Unravelling the Spatio-Temporal Neurodynamics of Rhythm Encoding-Reproduction Networks by a Novel fMRI Autoencoder</a> </em> <br>
    NER 2019
    [<a href='javascript:;'
    onclick='$("#abs_Kao2019Unravelling").toggle()'>abs</a>]
    <br>
    <strong>Chia-Hsiang Kao</strong>, Ching-Ju Yang, Li-Kai Cheng, Hsin-Yen Yu, Yong-Sheng Chen, Jen-Chuen Hsieh, and Li-Fen Chen<br>

<div id="abs_Kao2019Unravelling" style="text-align: justify; display: none" markdown="1">
Visualization of how the external stimuli are processed dynamically in the brain would help understanding the neural mechanisms of functional segregation and integration. The present study proposed a novel temporal autoencoder to estimate the neurodynamics of functional networks involved in rhythm encoding and reproduction. A fully-connected two-layer autoencoder was proposed to estimate the temporal dynamics in functional magnetic resonance image recordings. By minimizing the reconstruction error between the predicted next time sample and the corresponding ground truth next time sample, the system was trained to extract spatial patterns of functional network dynamics without any supervision effort. The results showed that the proposed model was able to extract the spatial patterns of task-related functional dynamics as well as the interactions between them. Our findings suggest that artificial neural networks would provide a useful tool to resolve temporal dynamics of neural processing in the human brain.
</div>

</td>
</tr>

</table>

### <i class="fa fa-chevron-right"></i> Repositories
<table class="table table-hover">
<tr>
  <td>
    <a href="https://github.com/IandRover/meta-gradient_RL">Replication</a>
    <!-- |<i class="fa fas fa-star"></i> 377 | -->
    <em>NeurIPS 2018 "Meta-Gradient Reinforcement Learning"</em>
    <!--  -->
    <!--     facebookresearch/mbrl-lib  -->
    <!--  -->
  </td>
  <td class='col-md-1' style='text-align:right;'>2021</td>
</tr>
</table>

### <i class="fa fa-chevron-right"></i> Volumteer Experience
<table class="table table-hover">
<tr>
  <td>
    <strong>Leading data analyst</strong> <br>
    Data for Social Good Program, DSP Inc, Taiwan <br>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2018 </td>
</tr>
</table>


### <i class="fa fa-chevron-right"></i> Skills
<table class="table table-hover">
<tr>
  <td class='col-md-2'>Languages</td>
  <td> Python, Matlab
  </td>
</tr>
<tr>
  <td class='col-md-2'>Frameworks</td>
  <td> NumPy, Pandas, PyTorch, SciPy, TensorFlow
  </td>
</tr>
<tr>
  <td class='col-md-2'>Tools</td>
  <td> Linux, tmux
  </td>
</tr>
</table>
