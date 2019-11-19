clear,clc
addpath('C:/Users/csjunxu/Documents/GitHub/MatlabHelpCodes');
addpath('C:\Users\csjunxu\Documents\GitHub\BM3DTIP2007_JunXu_Modified');
addpath('VisualCompare');

%% case 2
im = 'test047';
nSig = 10;
h =100;
w = 150;
s =40;
f =4;
lr = 1;


%% Original
I = imread(sprintf('BSD68_%s.png',im));
[hI, wI] = size(I);
[ outputimage ] = boxandresize( I, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_%s.png',im);
imwrite(outputimage,imname,'png');

%% Noisy
nI = imread(sprintf('BSD68_10_Noisy_28.13_0.8260_%s.png',im));
fprintf('PSNR is %f, SSIM is %f\n',csnr( nI, I, 0, 0 ),cal_ssim( nI, I, 0, 0 ));
[ outputimage ] = boxandresize( nI, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_Noisy_g%d_%s.png',nSig,im);
imwrite(outputimage,imname,'png');

% %% BM3D
% rI = imread( sprintf('BSD68_g5_BM3D_38.20_0.9569_%s.png',im));
% [ outputimage ] = boxandresize( rI, h,w,s, f,lr);
% outputimage = imresize(outputimage, 0.5);
% imname = sprintf('br_BM3D_g%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

%% DnCNN
rI = imread( sprintf('BSD68_10_DnCNN_31.7178_0.9252_%s.png',im));
[ outputimage ] = boxandresize( rI, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_DnCNN_g%d_%s.png',nSig,im);
imwrite(outputimage,imname,'png');

%% DIP
name = sprintf('BSD68_10_DIP_25.14_0.8128_%s.png',im);
rI = imread(name);
rI = imresize(rI, [hI, wI]);
[ outputimage ] = boxandresize( rI, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_DIP_g%d_%s.png',nSig,im);
imwrite(outputimage,imname,'png');

%% N2N
name = sprintf('BSD68_10_N2N_33.46_0.9628_%s.png',im);
rI = imread(name);
fprintf('PSNR is %f, SSIM is %f\n',csnr( rI, I, 0, 0 ),cal_ssim( rI, I, 0, 0 ));
[ outputimage ] = boxandresize( rI, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_N2N_g%d_%s.png',nSig,im);
imwrite(outputimage,imname,'png');

%% NAC
name = sprintf('BSD68_10_NAC_33.63_0.9688_%s.png',im);
rI = imread(name);
[ outputimage ] = boxandresize( rI, h,w,s, f,lr);
outputimage = imresize(outputimage, 0.5);
imname = sprintf('br_NAC_g%d_%s.png',nSig,im);
imwrite(outputimage,imname,'png');