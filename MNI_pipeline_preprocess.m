%%% Preprocessing script for MNI dataset

clear;

% INPUT the names of the files into the structure for NIAK
path_data = '/sb/scratch/pbellec/mni_mci/';
path_mnc  = [path_data 'raw/'];

csv_file = [path_mnc 'model_mni_mci.csv'];
[tab,labx,laby]=niak_read_csv(csv_file);

nb_subjects = length(labx);
for num_subj = 1:nb_subjects
        subject = labx{num_subj};
	files_in.(subject).anat = [path_mnc subject '_t1.mnc']; 
	mnc_file = [path_mnc subject '_fmr_'];	
        nb_files = 0;
	for num_mnc = 1:4
                file_name = [mnc_file num2str(num_mnc) '.mnc.gz'];
		f_found = psom_exist(file_name);
                if f_found
                    nb_files = nb_files+1;
	            files_in.(subject).fmri.session1.(sprintf('run%i',num_mnc)) = file_name;
		end
	end
end	

%%%%%%%%%%%%%%%%%%%%%%%
%% Pipeline options  %%
%%%%%%%%%%%%%%%%%%%%%%%

% General
opt.folder_out  = [path_data 'fmri_preprocess/'];    % Where to store the results
opt.size_output = 'quality_control';
opt.time_filter.hp = 0.01;
opt.corsica.sica.nb_comp = 50;
opt.corsica.threshold = 0.15;
opt.resample_vol.voxel_size = 3;
opt.smooth_vol.fwhm = 6;
opt.t1_preprocess.nu_correct.arg = '-distance 50';
opt.slice_timing.delay_in_tr = 0;
opt.slice_timing.type_scanner = 'Siemens';
opt.slice_timing.type_acquisition = 'interleaved ascending';

%motion+
opt.regress_confounds.flag_wm = true;
opt.regress_confounds.flag_vent = true;
opt.regress_confounds.flag_motion_params = true;
opt.regress_confounds.flag_scrubbing = true;
opt.regress_confounds.thre_fd = 0.5;

% multivar
opt.regress_confounds.flag_gsc = true;
opt.corsica.flag_skip = false;

opt.flag_test = true;
[pipeline,opt] = niak_pipeline_fmri_preprocess(files_in,opt);
