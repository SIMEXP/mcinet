# mcinet_paper

This github repository contains the scripts used to generate the results of the following publication:

A. Tam, C. Dansereau, A. Badhwar, P. Orban, S. Belleville, H. Chertkow, A. Dagher, A. Hanganu, O. Monchi, P. Rosa-Neto, A. Shmuel, S. Wang, J. Breitner, P. Bellec, for the Alzheimer's Disease Neuroimaging Initiative (2015).  *Common effects of amnestic mild cognitive impairment on resting-state connectivity across four independent studies* Front. Aging Neurosci. 7:242. [http://journal.frontiersin.org/article/10.3389/fnagi.2015.00242/full](http://journal.frontiersin.org/article/10.3389/fnagi.2015.00242/full)

## Data

This resting-state fMRI dataset is composed of four independent datasets collected from multiple sites.
The four datasets include:
- The [Alzheimer's Disease Neuroimaging Initiative](http://www.adni-info.org/Home.aspx) 2 (ADNI2) multisite sample
- A sample collected at the Montreal Neurological Institute, referred to as MNI, and which has been described in [this publication](http://www.ncbi.nlm.nih.gov/pubmed/24583406)
- Two samples collected at the Centre de recherche de l'institut universitaire de gériatrie de Montréal, referred to as CRIUGMa and CRIUGMb

Due to restrictions imposed by the Alzheimer's Disease Neuroimaging Initiative (ADNI) and/or by the consent forms signed by the subjects, data used in the paper cannot be shared.

We have released the Bootstrap Analysis of Stable Clusters (BASC)-generated group functional templates derived from the datasets on [figshare](http://dx.doi.org/10.6084/m9.figshare.1480461). This release contains 3D volumes of the symmetric and asymmetric brain parcellations at all resolutions selected by MSTEPS in both nii and mnc formats.

The release of these parcellations was described in the following publication:

A. Tam, C. Dansereau, A. Badhwar, P. Orban, S. Belleville, H. Chertkow, A. Dagher, A. Hanganu, O. Monchi, P. Rosa-Neto, A. Shmuel, J. Breitner, P. Bellec, for the Alzheimer's Disease Neuroimaging Initiative (2016).  *A dataset of multiresolution functional brain parcellations in an elderly population with no or mild cognitive impairment* Data in Brief 9, 1122-1129. [https://doi.org/10.1016/j.dib.2016.11.036](https://doi.org/10.1016/j.dib.2016.11.036)


## GLM-connectome analysis
- The preprocessing pipelines for [ADNI2](https://github.com/SIMEXP/mcinet/blob/master/preprocess/ADNI2_pipeline_preprocess.m), [MNI](https://github.com/SIMEXP/mcinet/blob/master/preprocess/MNI_pipeline_preprocess.m), [CRIUGMa](https://github.com/SIMEXP/mcinet/blob/master/preprocess/CRIUGMa_pipeline_preprocess.m), and [CRIUGMb](https://github.com/SIMEXP/mcinet/blob/master/preprocess/CRIUGMb_pipeline_preprocess.m)
- The [region-growing](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_region_growing.m) pipeline
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_regular_grid.m) pipeline, with regular grid of resolutions.
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_MSTEPS.m) pipeline, with resolutions selected by MSTEPS.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_MSTEPS_2.m) pipeline, with resolutions selected by MSTEPS

Scripts for a previous version of the above analysis can be found below:
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_regular_grid.m) pipeline, with regular grid of resolutions.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_MSTEPS.m) pipeline, with resolutions selected by MSTEPS

This analysis did not model different scanner models in ADNI2 and instead treated ADNI2 as a single site.  The results of this analysis can be found in the following preprint:

A. Tam, C. Dansereau, A. Badhwar, P. Orban, S. Belleville, H. Chertkow, A. Dagher, A. Hanganu, O. Monchi, P. Rosa-Neto, A. Shmuel, S. Wang, J. Breitner, P. Bellec, for the Alzheimer's Disease Neuroimaging Initiative  *Consistent inter-protocol differences in resting-state functional connectomes between normal aging and mild cognitive impairment*  [http://dx.doi.org/10.1101/019646](http://dx.doi.org/10.1101/019646)
