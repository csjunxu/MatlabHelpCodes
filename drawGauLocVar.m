im = 'cameraman';
scale = 0.1;
h =100;
w = 180;
s =30;
f =4;
lr = 2;

%% ours
name = sprintf('../Denoising_20160123_VBEMNSSBPFA_UnknownNoise/GauLocVar/Denoise_GauLoVa_%s_%1.1f.png',im,scale);
image = imread(name);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_Ours_GauLocVar_%1.1f_%s.png',scale,im);
imwrite(outputimage,imname,'png');

%% Original
image = imread(sprintf('../grayimages/%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_Original_%s.png',im);
imwrite(outputimage,imname,'png');

%% Noisy
image = imread(sprintf('./NoisyImage/GauLocVar/Noisy_GauLoVa_%s_%1.1f.png',im,scale));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_Noisy_GauLocVar_%1.1f_%s.png',scale,im);
imwrite(outputimage,imname,'png');

%% Noise clinic
image = imread( sprintf('./NoiseClinic/GauLocVar/NC_GauLocVar_%s_%1.1f.png',im,scale));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_NC_GauLocVar_%1.1f_%s.png',scale,im);
imwrite(outputimage,imname,'png');

%% BM3D
image = imread( sprintf('C:/Users/csjunxu/Desktop/JunXu/Paper/Image&Video Denoising/BM3D TIP2007/code/BM3Dresults/GauLocVar/BM3D_scale%1.2f_Sample1__%s.png',scale,im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_BM3D_GauLocVar_%1.1f_%s.png',scale,im);
imwrite(outputimage,imname,'png');

%% WNNM 
image = imread( sprintf('C:/Users/csjunxu/Desktop/JunXu/Paper/Image&Video Denoising/WNNM CVPR2014/WNNM/GauLocVar/WNNM_scale%1.2f_Sample1_%s.png',scale,im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_WNNM_GauLocVar_%1.1f_%s.png',scale,im);
imwrite(outputimage,imname,'png');

% image = imread( sprintf('./PGPD_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_PGPD_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');

% image = imread( sprintf('../PG_DCcolumn/LSSC/results/LSSC_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_LSSC_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');
%
% image = imread( sprintf('../PG_DCcolumn/EPLL/results/EPLL_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_EPLL_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');
%
% image = imread( sprintf('../PG_DCcolumn/NCSR/results/NCSR_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_NCSR_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');