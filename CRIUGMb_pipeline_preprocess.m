%%% Preprocessing script for CRIUGMb dataset

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Setting input/output files %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% WARNING: Do not use underscores '_' in the IDs of subject, sessions or runs. This may cause bugs in subsequent pipelines.
clear all
p=genpath('/sb/project/gsf-624-aa/quarantaine/niak-boss-0.12.18');
addpath(p);

%% Subject AD001
% Structural scan
files_in.AD001.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD001v1/anat.mnc.gz';
% fMRI run 1
files_in.AD001.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD001v1/run1.mnc.gz';
% fMRI run 2
files_in.AD001.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD001v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD001.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD001v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD001.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD001v2/run4.mnc.gz';
%% Subject AD002
% Structural scan
files_in.AD002.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD002v1/anat.mnc.gz';
% fMRI run 1
files_in.AD002.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD002v1/run1.mnc.gz';
% fMRI run 2
files_in.AD002.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD002v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD002.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD002v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD002.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD002v2/run4.mnc.gz';
%% Subject AD004
% Structural scan
files_in.AD004.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD004v1/anat.mnc.gz';
% fMRI run 1
files_in.AD004.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD004v1/run1.mnc.gz';
% fMRI run 2
files_in.AD004.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD004v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD004.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD004v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD004.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD004v2/run4.mnc.gz';
%% Subject AD005
% Structural scan
files_in.AD005.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD005v1/anat.mnc.gz';
% fMRI run 1
files_in.AD005.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD005v1/run1.mnc.gz';
% fMRI run 2
files_in.AD005.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD005v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD005.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD005v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD005.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD005v2/run4.mnc.gz';
%% Subject AD006
% Structural scan
files_in.AD006.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD006v1/anat.mnc.gz';
% fMRI run 1
files_in.AD006.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD006v1/run1.mnc.gz';
% fMRI run 2
files_in.AD006.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD006v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD006.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD006v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD006.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD006v2/run4.mnc.gz';
%% Subject AD007
% Structural scan
files_in.AD007.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD007v1/anat.mnc.gz';
% fMRI run 1
files_in.AD007.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD007v1/run1.mnc.gz';
% fMRI run 2
files_in.AD007.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD007v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD007.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD007v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD007.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD007v2/run4.mnc.gz';
%% Subject AD008
% Structural scan
files_in.AD008.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD008v1/anat.mnc.gz';
% fMRI run 1
files_in.AD008.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD008v1/run1.mnc.gz';
% fMRI run 2
files_in.AD008.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD008v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD008.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD008v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD008.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD008v2/run4.mnc.gz';
%% Subject AD009
% Structural scan
files_in.AD009.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD009v1/anat.mnc.gz';
% fMRI run 1
files_in.AD009.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD009v1/run1.mnc.gz';
% fMRI run 2
files_in.AD009.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD009v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD009.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD009v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD009.fmri.session2.rest4  = '/home/atsuko/database/pdad/raw_mnc/AD009v2/run4.mnc.gz';
%% Subject AD010
% Structural scan
files_in.AD010.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD010v1/anat.mnc.gz';
% fMRI run 1
files_in.AD010.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD010v1/run1.mnc.gz';
% fMRI run 2
files_in.AD010.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD010v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD010.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD010v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD010.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD010v2/run4.mnc.gz';
%% Subject AD011
% Structural scan
files_in.AD011.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD011v1/anat.mnc.gz';
% fMRI run 1
files_in.AD011.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD011v1/run1.mnc.gz';
% fMRI run 2
files_in.AD011.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD011v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD011.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD011v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD011.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD011v2/run4.mnc.gz';
%% Subject AD012
% Structural scan
files_in.AD012.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD012v1/anat.mnc.gz';
% fMRI run 1
files_in.AD012.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD012v1/run1.mnc.gz';
% fMRI run 2
files_in.AD012.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD012v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD012.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD012v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD012.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD012v2/run4.mnc.gz';
%% Subject AD013
% Structural scan
files_in.AD013.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD013v1/anat.mnc.gz';
% fMRI run 1
files_in.AD013.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD013v1/run1.mnc.gz';
% fMRI run 2
files_in.AD013.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD013v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD013.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD013v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD013.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD013v2/run4.mnc.gz';
%% Subject AD014
% Structural scan
files_in.AD014.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD014v1/anat.mnc.gz';
% fMRI run 1
files_in.AD014.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD014v1/run1.mnc.gz';
% fMRI run 2
files_in.AD014.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD014v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD014.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD014v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD014.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD014v2/run4.mnc.gz';
%% Subject AD015
% Structural scan
files_in.AD015.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD015v1/anat.mnc.gz';
% fMRI run 1
files_in.AD015.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD015v1/run1.mnc.gz';
% fMRI run 2
files_in.AD015.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD015v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD015.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD015v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD015.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD015v2/run4.mnc.gz';
%% Subject AD016
% Structural scan
files_in.AD016.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD016v1/anat.mnc.gz';
% fMRI run 1
files_in.AD016.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD016v1/run1.mnc.gz';
% fMRI run 2
files_in.AD016.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD016v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD016.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD016v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD016.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD016v2/run4.mnc.gz';
%% Subject AD017
% Structural scan
files_in.AD017.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD017v1/anat.mnc.gz';
% fMRI run 1
files_in.AD017.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD017v1/run1.mnc.gz';
% fMRI run 2
files_in.AD017.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD017v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD017.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD017v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD017.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD017v2/run4.mnc.gz';
%% Subject AD018
% Structural scan
files_in.AD018.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD018v1/anat.mnc.gz';
% fMRI run 1
files_in.AD018.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD018v1/run1.mnc.gz';
% fMRI run 2
files_in.AD018.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD018v1/run2.mnc.gz'; 
% fMRI run 3
files_in.AD018.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD018v1/run3.mnc.gz';
% fMRI run 4
%files_in.AD018.fmri.session2.rest4  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD018v2/run4.mnc.gz';
%% Subject AD019
% Structural scan
files_in.AD019.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD019v1/anat.mnc.gz';
% fMRI run 1
files_in.AD019.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD019v1/run1.mnc.gz';
% fMRI run 2
files_in.AD019.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD019v1/run2.mnc.gz';
% fMRI run 3
files_in.AD019.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD019v1/run3.mnc.gz';
%% Subject AD020
% Structural scan
files_in.AD020.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD020v1/anat.mnc.gz';
% fMRI run 1
files_in.AD020.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD020v1/run1.mnc.gz';
% fMRI run 2
files_in.AD020.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD020v1/run2.mnc.gz';
% fMRI run 3
files_in.AD020.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD020v1/run3.mnc.gz';
%% Subject AD021
% Structural scan
files_in.AD021.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD021v1/anat.mnc.gz';
% fMRI run 1
files_in.AD021.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD021v1/run1.mnc.gz';
% fMRI run 2
files_in.AD021.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD021v1/run2.mnc.gz';
% fMRI run 3
files_in.AD021.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD021v1/run3.mnc.gz';
%% Subject AD022
% Structural scan
files_in.AD022.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD022v1/anat.mnc.gz';
% fMRI run 1
files_in.AD022.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD022v1/run1.mnc.gz';
% fMRI run 2
files_in.AD022.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD022v1/run2.mnc.gz';
% fMRI run 3
files_in.AD022.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD022v1/run3.mnc.gz';

%% Subject AD023
% Structural scan
files_in.AD023.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD023v1/anat.mnc.gz';
% fMRI run 1
files_in.AD023.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD023v1/run1.mnc.gz';
% fMRI run 2
files_in.AD023.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD023v1/run2.mnc.gz';
% fMRI run 3
files_in.AD023.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD023v1/run3.mnc.gz';

%% Subject AD024
% Structural scan
files_in.AD024.anat                = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD024v1/anat.mnc.gz';
% fMRI run 1
files_in.AD024.fmri.session1.rest1 = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD024v1/run1.mnc.gz';
% fMRI run 2
files_in.AD024.fmri.session1.rest2  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD024v1/run2.mnc.gz';
% fMRI run 3
files_in.AD024.fmri.session1.rest3  = '/home/atam/database/ad_mtl/adpd/raw_mnc/AD024v1/run3.mnc.gz';

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_025_v1/';
files_in.AD025.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD025.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD025.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD025.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_026_01/';
files_in.AD026.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD026.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD026.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD026.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_027_v1/';
files_in.AD027.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD027.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD027.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD027.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_028_v1/';
files_in.AD028.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD028.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD028.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD028.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_029_v1/';
files_in.AD029.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD029.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD029.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD029.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_030_v1/';
files_in.AD030.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD030.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD030.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD030.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_031_v1/';
files_in.AD031.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD031.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD031.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD031.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_032_v1/';
files_in.AD032.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD023.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD032.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD032.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_033_v1/';
files_in.AD033.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD033.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD033.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD033.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_034_v1/';
files_in.AD034.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD034.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD034.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD034.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_035_v1/';
files_in.AD035.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD035.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD035.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD035.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_036_v1/';
files_in.AD036.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD036.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD036.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD036.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_037_v1/';
files_in.AD037.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD037.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD037.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD037.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_038_v1/';
files_in.AD038.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD038.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD038.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD038.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_039_v1/';
files_in.AD039.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD039.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD039.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD039.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_040
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_040_v1/';
files_in.AD040.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD040.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD040.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD040.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_041
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_041_v1/';
files_in.AD041.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD041.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD041.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD041.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_042
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_042_V1/';
files_in.AD042.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD042.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD042.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD042.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_043
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_043_v1/';
files_in.AD043.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD043.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD043.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD043.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_044
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_v1_044_2/';
files_in.AD044.anat                 = [filepath 'RSAD_044_anat.mnc.gz'];
% fMRI run 1
files_in.AD044.fmri.session1.rest1  = [filepath 'RSAD_044_run1.mnc.gz'];
% fMRI run 2
files_in.AD044.fmri.session1.rest2  = [filepath 'RSAD_044_run2.mnc.gz'];
% fMRI run 3
files_in.AD044.fmri.session1.rest3  = [filepath 'RSAD_044_run3.mnc.gz'];

%% Subject RSAD_045
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_v1_045/';
files_in.AD045.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD045.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD045.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD045.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];

%% Subject RSAD_046
% Structural scan
filepath = '/home/atam/database/ad_mtl/adpd/raw_mnc/RSAD_v1_046/';
files_in.AD046.anat                 = [filepath 'anat.mnc.gz'];
% fMRI run 1
files_in.AD046.fmri.session1.rest1  = [filepath 'run1.mnc.gz'];
% fMRI run 2
files_in.AD046.fmri.session1.rest2  = [filepath 'run2.mnc.gz'];
% fMRI run 3
files_in.AD046.fmri.session1.rest3  = [filepath 'run3.mnc.gz'];



%%%%%%%%%%%%%%%%%%%%%%%
%% Pipeline options  %%
%%%%%%%%%%%%%%%%%%%%%%%

%% General
opt.folder_out  = '/home/atam/database/ad_mtl/adpd/fmri_preprocess/';    % Where to store the results
opt.size_output = 'quality_control';                             % The amount of outputs that are generated by the pipeline. 'all' will keep intermediate outputs, 'quality_control' will only keep the quality control outputs.

%% Pipeline manager
%% It is recommended to edit a file psom_gb_vars_local.m based on psom_gb_vars.m located in the extensions/psom-rxxx/ subfolder of the NIAK folder
%% See http://code.google.com/p/psom/wiki/ConfigurationPsom for more details
%% It is also possible to change the configuration of PSOM manually by uncommenting the following instructions:

% opt.psom.mode                  = 'batch'; % Process jobs in the background
% opt.psom.mode_pipeline_manager = 'batch'; % Run the pipeline manager in the background : if I unlog, keep working
% opt.psom.max_queued            = 4;       % Number of jobs that can run in parallel. In batch mode, this is usually the number of cores.

%% Slice timing correction (niak_brick_slice_timing)
opt.slice_timing.type_acquisition = 'sequential descending'; % Slice timing order (available options : 'sequential ascending', 'sequential descending', 'interleaved ascending', 'interleaved descending')
opt.slice_timing.type_scanner     = 'Siemens';                % Scanner manufacturer. Only the value 'Siemens' will actually have an impact
opt.slice_timing.delay_in_tr      = 0;                       % The delay in TR ("blank" time between two volumes)
opt.slice_timing.suppress_vol     = 0;                       % Number of dummy scans to suppress.
opt.slice_timing.flag_nu_correct  = 1;                       % Apply a correction for non-uniformities on the EPI volumes (1: on, 0: of). This is particularly important for 32-channels coil.
opt.slice_timing.arg_nu_correct   = '-distance 200';         % The distance between control points for non-uniformity correction (in mm, lower values can capture faster varying slow spatial drifts).
opt.slice_timing.flag_center      = 0;                       % Set the origin of the volume at the center of mass of a brain mask. This is useful only if the voxel-to-world transformation from the DICOM header has somehow been damaged. This needs to be assessed on the raw images.
opt.slice_timing.flag_skip        = 0;                       % Skip the slice timing (0: don't skip, 1 : skip). Note that only the slice timing corretion portion is skipped, not all other effects such as FLAG_CENTER or FLAG_NU_CORRECT
 
% Motion estimation (niak_pipeline_motion)
opt.motion.session_ref  = 'session1'; % The session that is used as a reference. In general, use the session including the acqusition of the T1 scan.

% resampling in stereotaxic space
opt.resample_vol.interpolation = 'trilinear'; % The resampling scheme. The fastest and most robust method is trilinear.
opt.resample_vol.voxel_size    = [3 3 3];     % The voxel size to use in the stereotaxic space
opt.resample_vol.flag_skip     = 0;           % Skip resampling (data will stay in native functional space after slice timing/motion correction) (0: don't skip, 1 : skip)

% Linear and non-linear fit of the anatomical image in the stereotaxic
% space (niak_brick_t1_preprocess)
opt.t1_preprocess.nu_correct.arg = '-distance 75'; % Parameter for non-uniformity correction. 200 is a suggested value for 1.5T images, 75 for 3T images. If you find that this stage did not work well, this parameter is usually critical to improve the results.

% Temporal filtering (niak_brick_time_filter)
opt.time_filter.hp = 0.01; % Cut-off frequency for high-pass filtering, or removal of low frequencies (in Hz). A cut-off of -Inf will result in no high-pass filtering.
opt.time_filter.lp = Inf;  % Cut-off frequency for low-pass filtering, or removal of high frequencies (in Hz). A cut-off of Inf will result in no low-pass filtering.

% Regression of confounds and scrubbing (niak_brick_regress_confounds)
opt.regress_confounds.flag_wm = true;            % Turn on/off the regression of the average white matter signal (true: apply / false : don't apply)
opt.regress_confounds.flag_vent = true;          % Turn on/off the regression of the average of the ventricles (true: apply / false : don't apply)
opt.regress_confounds.flag_motion_params = true; % Turn on/off the regression of the motion parameters (true: apply / false : don't apply)
opt.regress_confounds.flag_gsc = false;          % Turn on/off the regression of the PCA-based estimation of the global signal (true: apply / false : don't apply)
opt.regress_confounds.flag_scrubbing = true;     % Turn on/off the scrubbing of time frames with excessive motion (true: apply / false : don't apply)
opt.regress_confounds.thre_fd = 0.5;             % The threshold on frame displacement that is used to determine frames with excessive motion in the scrubbing procedure

% Correction of physiological noise (niak_pipeline_corsica)
opt.corsica.sica.nb_comp             = 60;    % Number of components estimated during the ICA. 20 is a minimal number, 60 was used in the validation of CORSICA.
opt.corsica.threshold                = 0.15;  % This threshold has been calibrated on a validation database as providing good sensitivity with excellent specificity.
opt.corsica.flag_skip                = 1;     % Skip CORSICA (0: don't skip, 1 : skip). Even if it is skipped, ICA results will be generated for quality-control purposes. The method is not currently considered to be stable enough for production unless it is manually supervised.

% Spatial smoothing (niak_brick_smooth_vol)
opt.smooth_vol.fwhm      = 6;  % Full-width at maximum (FWHM) of the Gaussian blurring kernel, in mm.
opt.smooth_vol.flag_skip = 0;  % Skip spatial smoothing (0: don't skip, 1 : skip)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Run the fmri_preprocess pipeline  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
opt.flag_test = false;
[pipeline,opt] = niak_pipeline_fmri_preprocess(files_in,opt);


