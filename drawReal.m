im = 'BID_AN_middle_Real_CanonPowerShotSX60_HilaryWhite';
h = 200;
w = 100;
s = 150;
f = 2;
lr = 1;

%% Noisy
image = imread(sprintf('1_Results/Real_NoisyImage/%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_Noisy_%s.png',im);
imwrite(outputimage,imname,'png');

%% CSF
image = imread(sprintf('1_Results/Real_CSF/CSF_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_CSF_%s.png',im);
imwrite(outputimage,imname,'png');

%% TRD
image = imread(sprintf('1_Results/Real_TRD/TRD_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_TRD_%s.png',im);
imwrite(outputimage,imname,'png');

%% MLP
image = imread(sprintf('1_Results/Real_MLP/MLP_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_MLP_%s.png',im);
imwrite(outputimage,imname,'png');

%% BM3D
image = imread( sprintf('1_Results/Real_BM3D/BM3D_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_BM3D_%s.png',im);
imwrite(outputimage,imname,'png');

%% WNNM
image = imread( sprintf('1_Results/Real_WNNM/WNNM_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_WNNM_%s.png',im);
imwrite(outputimage,imname,'png');

%% Noise clinic
image = imread( sprintf('1_Results/Real_NoiseClinic/NC_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_NC_%s.png',im);
imwrite(outputimage,imname,'png');

%% NeatImage
image = imread( sprintf('1_Results/Real_NeatImage/NI_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_NI_%s.png',im);
imwrite(outputimage,imname,'png');

% DSCDL
image = imread(sprintf('1_Results/Real_DSCDL/DSCDL_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_DSCDL_%s.png',im);
imwrite(outputimage,imname,'png');

%% CPSDL
image = imread(sprintf('1_Results/Real_CPSDL/CPSDL_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_CPSDL_%s.png',im);
imwrite(outputimage,imname,'png');

% %% PGPD
% image = imread( sprintf('./PGPD/Real/PGPD_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_PGPD_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% WESNR
% image = imread( sprintf('./WESNR/Real/WESNR_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WESNR_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% TwoPhase
% image = imread( sprintf('./TwoPhase/Real/TwoPhase_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_TwoPhase_%s.png',im);
% imwrite(outputimage,imname,'png');
