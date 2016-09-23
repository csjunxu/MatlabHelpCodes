% %% case 1
% im = 'couple';
% nSig = 10;
% ratio = 0.15;
% h = 180;
% w =150;
% s =50;
% f =4;
% lr =2;

%% case 2
im = 'barbara';
nSig = 20;
ratio = 0.15;
h =320;
w =320;
s =60;
f =4;
lr =2;

% %% case 3
% im = 'airfield';
% nSig = 10;
% ratio = 0.15;
% h =220;
% w =270;
% s =60;
% f =4;
% lr =2;

% %% case 4
% im = 'baboon';
% nSig = 10;
% ratio = 0.15;
% h =220;
% w =270;
% s =60;
% f =4;
% lr =2;

% %% case 5
% im = 'cameraman';
% nSig = 10;
% ratio = 0.3;
% h =120;
% w =20;
% s =30;
% f =4;
% lr =1;

% %% case 6
% im = 'peppers';
% nSig = 10;
% ratio = 0.3;
% h =180;
% w =70;
% s =60;
% f =4;
% lr =1;

% %% case 7
% im = 'house';
% nSig = 20;
% ratio = 0.15;
% h =100;
% w =160;
% s =30;
% f =4;
% lr =2;

% %% case 8
% im = 'hill';
% nSig = 20;
% ratio = 0.15;
% h =330;
% w =140;
% s =60;
% f =4;
% lr =1;

% %% case 9
% im = 'man';
% nSig = 20;
% ratio = 0.3;
% h =220;
% w =60;
% s =60;
% f =4;
% lr =1;

% %% case 10
% im = 'lena';
% nSig = 20;
% ratio = 0.3;
% h =260;
% w =365;
% s =60;
% f =4;
% lr =2;

% %% case 11
% im = 'peppers';
% nSig = 10;
% ratio = 0.3;
% h =380;
% w =150;
% s =60;
% f =4;
% lr =1;

% %% Original
% image = imread(sprintf('../grayimages/%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Original_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% Noisy
% image = imread(['./NoisyImage/GauRVIN/Noisy_GauRVIN_' im '_' num2str(nSig) '_' num2str(ratio) '_1.png']);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Noisy_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');


%% BPFA
image = imread(['./BPFA/GauRVIN/BPFA_GauRVIN_SVD_online_' im '_' num2str(nSig) '_' num2str(ratio) '_1.png']);
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_BPFA_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
imwrite(outputimage,imname,'png');

% %% BM3D
% image = imread( sprintf('./BM3D/GauRVIN/BM3D_GauRVIN_%d_%1.2f_Sample1_%s.png',nSig,ratio,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_BM3D_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');

% %% WNNM 
% image = imread( sprintf('./WNNM/GauRVIN/WNNM_GauRVIN_Sample1_%d_%1.2f_%s.png',nSig,ratio,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WNNM_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');

%% PGPD
image = imread( sprintf('./PGPD/GauRVIN/PGPD_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_PGPD_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
imwrite(outputimage,imname,'png');

% %% Two Phase
% image = imread(['./TwoPhase/GauRVIN/TwoPhase_GauRVIN_' im '_' num2str(nSig) '_' num2str(ratio) '_1.png']);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_TwoPhase_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');

% %% WESNR
% image = imread(['./WESNR/GauRVIN/WESNR_AMF_GauRVIN_' im '_' num2str(nSig) '_' num2str(ratio) '.png']);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WESNR_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');

% %% Noise clinic
% image = imread(['./NoiseClinic/GauRVIN/NC_GauRVIN_' im '_' num2str(nSig) '_' num2str(ratio) '_1.png']);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_NC_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
% imwrite(outputimage,imname,'png');

% %% ours
% image = imread(['./VBGMBPFA/GauRVIN/VBPGBPFA_GauRVIN_' im '_' num2str(nSig) '_' num2str(ratio) '_1.png']);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Ours_GauRVIN_%d_%1.2f_%s.png',nSig,ratio,im);
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