%%% MCINET region growing

clear all

addpath(genpath('/home/atam/quarantaine/niak-boss-0.12.18/'));

path_data = '/gs/scratch/atam/';

%%%%%%%%%%%%%%%%%%%%%
%% Grabbing the results from the NIAK fMRI preprocessing pipeline
%%%%%%%%%%%%%%%%%%%%%
opt_g.min_nb_vol = 50;     % The minimum number of volumes for an fMRI dataset to be included. This option is useful when scrubbing is used, and the resulting time series may be too short.
opt_g.min_xcorr_func = 0; % The minimum xcorr score for an fMRI dataset to be included. This metric is a tool for quality control which assess the quality of non-linear coregistration of functional images in stereotaxic space. Manual inspection of the values during QC is necessary to properly set this threshold.
opt_g.min_xcorr_anat = 0; % The minimum xcorr score for an fMRI dataset to be included. This metric is a tool for quality control which assess the quality of non-linear coregistration of the anatomical image in stereotaxic space. Manual inspection of the values during QC is necessary to properly set this threshold.
opt_g.filter.session = {'session1'};
files_in.data = niak_grab_fmri_preprocess([path_data 'adni2/fmri_preprocess/'],opt_g).data; % Replace the folder by the path where the results of the fMRI preprocessing pipeline were stored. 
files_in_tmp.data = niak_grab_fmri_preprocess([path_data 'ad_mtl/belleville/fmri_preprocess/'],opt_g).data; % Replace the folder by the path where the results of the fMRI preprocessing pipeline were stored. 
files_in.data = psom_merge_pipeline(files_in.data,files_in_tmp.data);
files_in_tmp.data = niak_grab_fmri_preprocess([path_data 'ad_mtl/mni_mci/fmri_preprocess/'],opt_g).data; % Replace the folder by the path where the results of the fMRI preprocessing pipeline were stored. 
files_in.data = psom_merge_pipeline(files_in.data,files_in_tmp.data);
files_in_tmp.data = niak_grab_fmri_preprocess([path_data 'ad_mtl/adpd/fmri_preprocess/'],opt_g).data; % Replace the folder by the path where the results of the fMRI preprocessing pipeline were stored. 
files_in.data = psom_merge_pipeline(files_in.data,files_in_tmp.data);
%opt_g.exclude_subject = {'sub1','sub2'}; % If for whatever reason some subjects have to be excluded that were not caught by the quality control metrics, it is possible to manually specify their IDs here.
files_in_tmp.data = niak_grab_fmri_preprocess([path_data 'ad_mtl/criugm_mci/fmri_preprocess/'],opt_g).data; % Replace the folder by the path where the results of the fMRI preprocessing pipeline were stored. 
files_in.data = psom_merge_pipeline(files_in.data,files_in_tmp.data);


%%%%%%%%%%%%%
%% Options %%
%%%%%%%%%%%%%
opt.folder_out = [path_data 'adnet/region_growing_20141210/']; % Where to store the results
opt.flag_roi = true; % Only generate the ROI parcelation
opt.region_growing.thre_size = 1000; % The critical size for regions

%% Run the pipeline
opt.flag_test = false;
[pipeline_rg,opt] = niak_pipeline_stability_rest(files_in,opt);

