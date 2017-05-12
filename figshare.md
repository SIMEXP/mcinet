### Content
This work is derived from the Alzheimer's Disease Neuroimaging Initiative 2 (ADNI2) and three samples from Montreal, Canada, as described in the following publications : Tam et al 2015, (https://dx.doi.org/10.3389/fnagi.2015.00242) ; Tam et al 2016, (https://doi.org/10.1016/j.dib.2016.11.036). It includes group brain parcellations for clusters generated from resting-state functional magnetic resonance images for 99 cognitively normal elderly persons and 129 patients with mild cognitive impairment. The parcellations have been generated using a method called bootstrap analysis of stable clusters (BASC, Bellec et al., 2010) and 8 resolutions of clusters (4, 6, 12, 22, 33, 65, 111, and 208 total bihemispheric parcels) were selected using a data-driven method called MSTEPS (Bellec, 2013). This work also includes parcellations that contain regions-of-interest (ROIs) that span only one hemisphere at 8 resolutions (10, 17, 30, 51, 77, 137, 199, and 322 total ROIs). It also includes maps illustrating uncorrected functional connectivity differences (t-maps) between patients and controls for four seeds/ROIs (superior medial frontal cortex, dorsomedial prefrontal cortex, striatum, middle temporal lobe).
This release contains the following files:
* **README.md:** a text description of the release.
* **brain_parcellation_mcinet_basc_(sym,asym)_(#)clusters.(mnc,nii).gz:** 3D volumes (either in .mnc or .nii format) at 3 mm isotropic resolution, in the MNI non-linear 2009a space (http://www.bic.mni.mcgill.ca/ServicesAtlases/ICBM152NLin2009), at multiple resolutions of # clusters. Note that four versions of the templates are available, named with sym_mnc, asym_mnc, sym_nii or asym_nii. The mnc flavor contains files in the minc format, while the nii flavor has files in the nifti format. The asym flavor contains brain images that have been registered in the asymmetric version of the MNI brain template (reflecting that the brain is asymmetric), while with the sym flavor they have been registered in the symmetric version of the MNI template. The symmetric template has been forced to be symmetric anatomically, and is therefore ideally suited to study homotopic functional connections in fMRI: finding homotopic regions simply consists of flipping the x-axis of the template. Note: These clusters are often bihemispheric. For parcellations containing regions that span only one hemisphere, see below.
* **brain_parcellation_mcinet_basc_(sym,asym)_(#)rois.(mnc,nii).gz:** 3D volumes (either in .mnc or .nii format) at 3 mm isotropic resolution, in the MNI non-linear 2009a space, at multiple resolutions of # ROIs, that span only one hemisphere. As above, mnc/nii and sym/asym versions of the templates are available. These spatially constrained region-level parcellations were derived from the cluster-level parcellations, as follows:
  * 4 clusters = 10 ROIs
  * 6 clusters = 17 ROIs
  * 12 clusters = 30 ROIs
  * 22 clusters = 51 ROIs
  * 33 clusters = 77 ROIs
  * 65 clusters = 137 ROIs
  * 111 clusters = 199 ROIs
  * 208 clusters = 322 ROIs
* **labels_mcinet_(sym,asym)_ (#)(clusters,ROIs).csv:** spreadsheets containing labels for each cluster or ROI for resolutions containing 30 or more ROIs. For the resolution containing 12 clusters (or 30 ROIs), we manually labeled each cluster as follows:
  * DGMN: deep gray matter nuclei, 
  * pDMN: posterior default mode network
  * mTL: medial temporal lobe 
  * vTL: ventral temporal lobe
  * dTL: dorsal temporal lobe 
  * aDMN: anterior default mode network
  * OFC: orbitofrontal cortex 
  * pATT: posterior attention
  * CER: cerebellum
  * SM: sensory-motor
  * VIS: visual
  * FPN: frontoparietal network. 
  
  Then, we decomposed the networks into smaller subclusters at all higher resolutions. Each parcel at higher resolutions was labeled in reference to the parcels at resolution 12, with the following convention: (resolution)_(parcel label)_(#); for example, at resolution (R) 22, the anterior default mode splits into two clusters, which were named “R22_aDMN_1” and “R22_aDMN_2”.
* **ttest_ctrlvsmci_seed(#).(mnc,nii).gz:** 3D volumes (either in .mnc or .nii) displaying functional connectivity differences (uncorrected t-tests) between patients with mild cognitive impairment and cognitively normal elderly, for 4 different seeds/regions of interest i.e. striatum (seed #2), dorsomedial prefrontal cortex (#9), middle temporal lobe (#12), superior medial frontal cortex (#28); cluster numbers are taken from the parcellation containing 33 clusters.
### Preprocessing
The datasets were analysed using the NeuroImaging Analysis Kit (NIAK https://github.com/SIMEXP/niak) version 0.12.18, under CentOS version 6.3 with Octave (http://gnu.octave.org) version 3.8.1 and the Minc toolkit (http://www.bic.mni.mcgill.ca/ServicesSoftware/ServicesSoftwareMincToolKit) version 0.3.18. Brain parcellations were derived using BASC (Bellec et al. 2010). Functional connectomes were generated, and general linear models were used to test for differences between patients and controls for each connection between two clusters. Please see the README.md for more details. 
### References
* Bellec, P, et al, 2010. Multi-level bootstrap analysis of stable clusters in resting-state fMRI. NeuroImage 51 (3), 1126–1139.
* Bellec, P, Jun. 2013. Mining the Hierarchy of Resting-State Brain Networks: Selection of Representative Clusters in a Multiscale Structure. In: Pattern Recognition in Neuroimaging (PRNI), 2013 International Workshop on. pp. 54–57.
* Tam, A, et al, 2015. Common Effects of Amnestic Mild Cognitive Impairment on Resting-State Connectivity Across Four Independent Studies. Frontiers in Aging Neuroscience 7, 242.
* Tam, A, et al, 2016. A dataset of multiresolution functional brain parcellations in an elderly population with no or mild cognitive impairment. Data in Brief 9, 1122–1129.
### Other derivatives
The datasets that were used to generate the parcellations are described in a publication, see the following link: https://github.com/SIMEXP/mcinet
