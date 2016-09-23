im = 'leaves';
nSig = [10 30 100];
nWeight = [0.5 0.25 0.25];
h =90;
w = 2;
s =40;
f =3;
lr = 1;

%% ours
name = ['../Denoising_20160123_VBEMNSSBPFA_UnknownNoise/MoG/DenoisedMoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
image = imread(name);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = ['br_Ours_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
imwrite(outputimage,imname,'png');

%% Original
image = imread(sprintf('../grayimages/%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_Original_%s.png',im);
imwrite(outputimage,imname,'png');

%% Noisy
name = ['./NoisyImage/MoG/Noisy_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
image = imread(name);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = ['br_Noisy_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
imwrite(outputimage,imname,'png');

%% Noise clinic
image = imread( ['./NoiseClinic/MoG/NC_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png']);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = ['br_NC_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
imwrite(outputimage,imname,'png');

%% WNNM 
image = imread( ['./WNNM/MoG/WNNM_MoG_Sample1_' num2str(nSig(1)) '_' num2str(nWeight(1)) '0_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '_' im '.png']);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = ['br_WNNM_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
imwrite(outputimage,imname,'png');

%% BM3D
image = imread( ['./BM3D/MoG/BM3D_MoG_Sample1_' num2str(nSig(1)) '_' num2str(nWeight(1)) '0_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '_' im '.png']);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = ['br_BM3D_MoG_' im '_' num2str(nSig(1)) '_' num2str(nWeight(1)) '_' num2str(nSig(2)) '_' num2str(nWeight(2)) '_' num2str(nSig(3)) '_' num2str(nWeight(3)) '.png'];
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