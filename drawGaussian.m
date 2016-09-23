% %% case 1
% im = 'house';
% nSig = 40;
% h = 100;
% w =30;
% s =40;
% f =3;
% lr =1;

%% case 2
im = 'hill';
nSig = 50;
h =140;
w = 130;
s =50;
f =5;
lr = 1;

% %% case 3
% im = 'couple';
% nSig = 30;
% h = 140;
% w =110;
% s =50;
% f =5;
% lr =1;

% %% case4
% im = 'elaine';
% nSig = 30;
% h = 140;
% w =110;
% s =50;
% f =5;
% lr =1;

% %% case 5
% im = 'peppers';
% nSig = 40;
% h = 140;
% w =110;
% s =50;
% f =5;
% lr = 1;

% %% case 6
% im = 'monarch';
% nSig = 40;
% h = 70;
% w =175;
% s =35;
% f = 4;
% lr = 2;

% %% case 7
% im = 'airfield';
% nSig = 50;
% h = 300;
% w =400;
% s =50;
% f =5;
% lr = 2;

% %% case 8
% im = 'airplane';
% nSig = 50;
% h = 150;
% w = 100;
% s =60;
% f =4;
% lr = 1;

% %% case 9
% im = 'carhouse';
% nSig = 50;
% h = 210;
% w = 110;
% s =50;
% f =5;
% lr =1;

% %% case 10
% im = 'cameraman';
% nSig = 75;
% h = 200;
% w = 30;
% s =40;
% f =3;
% lr = 1;

% %% case 11
% im = 'leaves';
% nSig = 75;
% h = 100;
% w =25;
% s =50;
% f =3;
% lr =1;

% %% case 12
% im = 'man';
% nSig = 75;
% h = 200;
% w = 50;
% s =90;
% f =3;
% lr = 1;

% %% case 13
% im = 'hill';
% nSig = 75;
% h =280;
% w = 80;
% s =40;
% f =7;
% lr = 1;

% %% case 14
% im = 'barbara';
% nSig = 40;
% h = 100;
% w =30;
% s =40;
% f =3;
% lr =1;

% %% Original
% image = imread(sprintf('../grayimages/%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Original_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% Noisy
% image = imread(sprintf('./NoisyImage/Gaussian/NoisyGaussian_%s_%d.png',im,nSig));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Noisy_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

%% BPFA
name = sprintf('BPFA_%s_%d.png',im,nSig);
image = imread(name);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_BPFA_Gau_%s_%d.png',im,nSig);
imwrite(outputimage,imname,'png');

% %% BM3D
% image = imread( sprintf('./BM3D/Gaussian/BM3D_nSig%d_Sample1_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_BM3D_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% WNNM 
% image = imread( sprintf('./WNNM/Gaussian/WNNM_Sample1_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WNNM_2Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% PGPD
% image = imread( sprintf('./PGPD/Gaussian/PGPD_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_PGPD_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% TwoPhase 
% image = imread( sprintf('./TwoPhase/Gau/TwoPhase_Gau_%s_%d_1.png',im,nSig));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_TwoPhase_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% WESNR 
% image = imread( sprintf('./WESNR/Gau/WESNR_Gau_%s_%d.png',im,nSig));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WESNR_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% Noise clinic
% image = imread( sprintf('./NoiseClinic/Gaussian/NC_Gau_%s_%d.png',im,nSig));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_NC_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% %% ours
% name = sprintf('./VBGMBPFA/Gau/Mixed_DenoisedGaussian_%s_%d.png',im,nSig);
% image = imread(name);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Ours_Gau_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');


% image = imread( sprintf('./PGPD_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_PGPD_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');
%
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