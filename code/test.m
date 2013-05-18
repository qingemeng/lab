function test
clear all;
addpath('DebugInfo');
addpath('TrainingImages/FACES');
eps = 1e-6;

% %debug point 1
%  [im,ii_im] = LoadIm('TrainingImages/FACES/face00001.bmp');
%  dinfo1 = load('DebugInfo/debuginfo1.mat');
%  s1 = sum(abs(dinfo1.im(:) - im(:))> eps)
%  s2 = sum(abs(dinfo1.ii_im(:) - ii_im(:))>eps)


%% debug point 2
% [im,ii_im] = LoadIm('TrainingImages/FACES/face00001.bmp');
% dinfo2 = load('DebugInfo/debuginfo2.mat');
% x = dinfo2.x; y = dinfo2.y; w = dinfo2.w; h = dinfo2.h;
% abs(dinfo2.f1 - FeatureTypeI(ii_im, x, y, w, h)) > eps
% abs(dinfo2.f2 - FeatureTypeII(ii_im, x, y, w, h)) > eps
% abs(dinfo2.f3 - FeatureTypeIII(ii_im, x, y, w, h)) > eps
% abs(dinfo2.f4 - FeatureTypeIV(ii_im, x, y, w, h)) > eps


%% debug point 3
% ii_ims = zeros(19,19,100);
% mystr = ['TrainingImages/FACES', '/*.bmp'];
% im_files = dir(mystr);
% for i = 1:100
%     [im, ii_im] = LoadIm(im_files(i).name);
%     ii_ims(:,:,i) = ii_im;    
% end
% dinfo3 = load('DebugInfo/debuginfo3.mat');
% ftype = dinfo3.ftype;
% fs =  ComputeFeature(ii_ims, ftype);
% sum(abs(dinfo3.fs - fs) > eps)



% % debug point 4
% % % fpic = MakeFeaturePic([4,5,5,5,5],19,19);
% % % imagesc(fpic);
% % % 
% % % dirname = 'TrainingImages/FACES';
% % % dinfo4 = load('DebugInfo/debuginfo4.mat');
% % % ni = dinfo4.ni;
% % % all_ftypes = dinfo4.all_ftypes;
% % % im_sfn = 'FaceData.mat';
% % % f_sfn = 'FeaturesToMat.mat';
% % % rng(dinfo4.jseed);
% % % LoadSaveImData(dirname,ni,im_sfn);
% % % ComputeSaveFData(all_ftypes,f_sfn);
% % % myfd = load('FaceData.mat');
% % % dinfo4.ii_ims(4,1:15)
% % % myfd.ii_ims(4,1:15)

%% debug point 4
% fpic = MakeFeaturePic([4,5,5,5,5],19,19);
% imagesc(fpic);
% 
% dirname = 'TrainingImages/FACES';
% dinfo4 = load('DebugInfo/debuginfo4.mat');
% ni = dinfo4.ni;
% all_ftypes = dinfo4.all_ftypes;
% im_sfn = 'FaceData.mat';
% f_sfn = 'FeaturesToMat.mat';
% rng(dinfo4.jseed);
% ii_ims = LoadSaveImData(dirname,ni,im_sfn);
% fmat = ComputeSaveFData(all_ftypes,f_sfn);
% sum(sum(abs(dinfo4.fmat - fmat)) > eps)
% sum(sum(abs(dinfo4.ii_ims - ii_ims)) > eps)


%% debug point 5
% dinfo5 = load('DebugInfo/debuginfo5.mat');
% np = dinfo5.np;
% nn = dinfo5.nn;
% all_ftypes = dinfo5.all_ftypes;
% rng(dinfo5.jseed);
% GetTrainingData(all_ftypes, np, nn);
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% Fdata.dirname
% 


%%  debug point 6
% dinfo6 = load('DebugInfo/debuginfo6.mat');
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% T = dinfo6.T;
% 
% FTdata.fmat = FTdata.fmat(:,1:1000);
% %%%not equal for all FTdata!!!!
% 
% Cparams = BoostingAlg(Fdata,NFdata,FTdata,T);
% sum(abs(dinfo6.alphas - Cparams.alphas)>eps)
% sum(abs(dinfo6.Thetas(:) - Cparams.Thetas(:))>eps)

%% debug point 7
% dinfo7 = load('DebugInfo/debuginfo7.mat');
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% T = dinfo7.T;
% dinfo7.T
% Cparams = BoostingAlg(Fdata, NFdata, FTdata, T);
% sum(abs(dinfo7.alphas - Cparams.alphas)>eps)
% sum(abs(dinfo7.Thetas(:) - Cparams.Thetas(:))>eps)

%debug program 20&21
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% Cparams = BoostingAlg(Fdata, NFdata, FTdata, 3);
% [im,ii_im] = LoadIm('TrainingImages/FACES/face00001.bmp');
% sc = ApplyDetector(Cparams,ii_im)
% ComputeROC(Cparams,Fdata,NFdata)

%debug program 22
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% Cparams = BoostingAlg(Fdata, NFdata, FTdata, 10);
% im = 'TestImages/one_chris.png';
% dets = ScanImageFixedSize(Cparams, im);
% DisplayDetections(im,dets);

%debug program 25
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% Cparams = BoostingAlg(Fdata, NFdata, FTdata, 10);
% im = 'TestImages/big_one_chris.png';
% min_s = 0.6; max_s = 1.3; step_s = 0.06; 
% dets = ScanImageOverScale(Cparams, im, min_s, max_s, step_s);
% DisplayDetections(im,dets);
end

