# mcinet_paper

This github repository contains the scripts used to generate the results of the following publication:

A. Tam, C. Dansereau, A. Badhwar, P. Orban, S. Belleville, H. Chertkow, A. Dagher, A. Hanganu, O. Monchi, P. Rosa-Neto, A. Shmuel, S. Wang, J. Breitner, P. Bellec, for the Alzheimer's Disease Neuroimaging Initiative  *Consistent inter-protocol differences in resting-state functional connectomes between normal aging and mild cognitive impairment*  [http://dx.doi.org/10.1101/019646](http://dx.doi.org/10.1101/019646)

## Data

This resting-state fMRI dataset is composed of four independent datasets collected from multiple sites.
The four datasets include:
- The [Alzheimer's Disease Neuroimaging Initiative](http://www.adni-info.org/Home.aspx) 2 (ADNI2) multisite sample
- A sample collected at the Montreal Neurological Institute, referred to as MNI, and which has been described in [this publication](http://www.ncbi.nlm.nih.gov/pubmed/24583406)
- Two samples collected at the Centre de recherche de l'institut universitaire de gériatrie de Montréal, referred to as CRIUGMa and CRIUGMb

Due to restrictions imposed by the Alzheimer's Disease Neuroimaging Initiative (ADNI) and/or by the consent forms signed by the subjects, data used in the paper cannot be shared.

We have released the Bootstrap Analysis of Stable Clusters (BASC)-generated group functional templates derived from the datasets on [figshare](http://dx.doi.org/10.6084/m9.figshare.1480461). This release contains 3D volumes of the symmetric and asymmetric brain parcellations at all resolutions selected by MSTEPS in both nii and mnc formats.

## GLM-connectome analysis
- The preprocessing pipelines for [ADNI2](https://github.com/SIMEXP/mcinet/blob/master/preprocess/ADNI2_pipeline_preprocess.m), [MNI](https://github.com/SIMEXP/mcinet/blob/master/preprocess/MNI_pipeline_preprocess.m), [CRIUGMa](https://github.com/SIMEXP/mcinet/blob/master/preprocess/CRIUGMa_pipeline_preprocess.m), and [CRIUGMb](https://github.com/SIMEXP/mcinet/blob/master/preprocess/CRIUGMb_pipeline_preprocess.m)
- The [region-growing](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_region_growing.m) pipeline
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_regular_grid.m) pipeline, with regular grid of resolutions.
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_MSTEPS.m) pipeline, with resolutions selected by MSTEPS.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_regular_grid.m) pipeline, with regular grid of resolutions.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_MSTEPS.m) pipeline, with resolutions selected by MSTEPS
