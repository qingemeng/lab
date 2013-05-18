function test_copy
% % debug point 4
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

dinfo5 = load('DebugInfo/debuginfo5.mat');
np = dinfo5.np;
nn = dinfo5.nn;
all_ftypes = dinfo5.all_ftypes;
rng(dinfo5.jseed);
GetTrainingData(all_ftypes, np, nn);
Fdata = load('FaceData.mat');
NFdata = load('NonFaceData.mat');
FTdata = load('FeaturesToUse.mat');
Fdata.dirname

% dinfo6 = load('DebugInfo/debuginfo6.mat');
% Fdata = load('FaceData.mat');
% NFdata = load('NonFaceData.mat');
% FTdata = load('FeaturesToUse.mat');
% T = dinfo6.T;
% %dinfo6.alphas
% Cparams = BoostingAlg(Fdata,NFdata,FTdata,T);
% %Cparams.alphas
% sum(abs(dinfo6.alphas - Cparams.alphas)>eps)
% sum(abs(dinfo6.Thetas(:) - Cparams.Thetas(:))>eps)

end