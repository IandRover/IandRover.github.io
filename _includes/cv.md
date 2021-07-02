 I am medical student at National Yang Ming Chiao Tung University with interests in machine learning, computer vision and medical image analysis, recently involving meta-learing and self-supervised contrastive learning.<br><br>

## <i class="fa fa-chevron-right"></i> Education

<table class="table table-hover">
  <tr>
    <td>
        <strong>Doctor of Medicine</strong> (M.D.)
          <!-- (0.00/0.00) -->
        <br>
      National Yang Ming Chiao Tung University | Taipei, Taiwan
        <p style='margin-top:-1em;margin-bottom:0em' markdown='1'>
        <!-- <br> *<a href="https://github.com/bamos/thesis">Differentiable Optimization-Based Modeling for Machine Learning</a>* -->
        <br> Advisors:
        <a href="https://scholar.google.com.tw/citations?user=BJjT9kAAAAAJ">Li-Fen, Chen </a> (2017 - 2020), <a href="https://walonchiu.github.io/"> Wei-Chen Chiu</a> (2020 - 2021), <a href="https://sites.google.com/site/pinyuchenpage">Pin-Yu Chen</a> (2021)  
        </p>
    </td>
    <td class="col-md-2" style='text-align:right;'>2015 - 2022</td>
  </tr>
</table>


## <i class="fa fa-chevron-right"></i> Research Internships
<table class="table table-hover">
<!-- <tr>
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
</tr> -->
</table>


## <i class="fa fa-chevron-right"></i> Honors & Awards
<table class="table table-hover">
<tr>
  <td>
    <strong>Second Prize</strong>, Taiwan Brain Tumor Segmentation Challenge
  </td>
  <td class='col-md-2' style='text-align:right;'> 2019 </td>
</tr>
<tr>
  <td>
    <strong>Gold Medal</strong>, International Genetically Engineered Machine Competition
    <br><p style="color:grey;font-size:1.2rem">
</p>
  </td>
  <td class='col-md-2' style='text-align:right;'> 2016 </td>
</tr>
</table>


## <i class="fa fa-chevron-right"></i> Publications

<h2>2021</h2>
<table class="table table-hover">

<tr id="tr-kao2021maml" style="background-color: #ffffd0">
<td>
    <em><a href='https://arxiv.org/abs/2106.15367' target='_blank'>MAML is a Noisy Contrastive Learner</a> </em><br>
    <strong>Chia-Hsiang Kao</strong> Wei-Chen Chiu, and Pin-Yu Chen<br>
    Preprint
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
    MICCAI 2021
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
    NER 2019
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

## <i class="fa fa-chevron-right"></i> Skills
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
