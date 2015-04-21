# mcinet_paper

This github repository contains the scripts used to generate the results of the following publication:
[biorxiv]

## Data

This resting-state fMRI dataset is composed of four independent datasets collected from multiple sites.
The four datasets include:
- The [Alzheimer's Disease Neuroimaging Initiative](http://www.adni-info.org/Home.aspx) 2 (ADNI2) multisite sample
- A sample collected at the Montreal Neurological Institute, henceforth referred to as MNI, and which has been described in [this publication](http://www.ncbi.nlm.nih.gov/pubmed/24583406)
- Two samples collected at the Centre de recherche de l'institut universitaire de gériatrie de Montréal, henceforth referred to as CRIUGMa and CRIUGMb

Due to restrictions imposed by the Alzheimer's Disease Neuroimaging Initiative (ADNI) and/or by the consent forms signed by the subjects, some of the data used in the paper cannot be shared.

## GLM-connectome analysis
- The preprocessing pipelines for [ADNI2](https://github.com/SIMEXP/mcinet/blob/master/ADNI2_pipeline_preprocess.m), [MNI](https://github.com/SIMEXP/mcinet/blob/master/MNI_pipeline_preprocess.m), [CRIUGMa](https://github.com/SIMEXP/mcinet/blob/master/CRIUGMa_pipeline_preprocess.m), and [CRIUGMb](https://github.com/SIMEXP/mcinet/blob/master/CRIUGMb_pipeline_preprocess.m)
- The [region-growing](https://github.comSIMEXP/mcinet/blob/master/mcinet_pipeline_region_growing.m) pipeline
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_regular_grid.m) pipeline, with regular grid of resolutions/scales.
- The [Boostrap Analysis of Stable Clusters](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_BASC_MSTEPS.m) pipeline, with resolutions/scales selected by MSTEPS.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_regular_grid.m) pipeline, with regular grid of resolutions/scales.
- The [Multiscale Statistical Parametric Connectome](https://github.com/SIMEXP/mcinet/blob/master/mcinet_pipeline_MSPC_MSTEPS.m) pipeline, with resolutions/scales selected by MSTEPS
