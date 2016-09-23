% im = 'house';
% nSig = 20;
% h = 25;
% w =62;
% s =50;
% f =3;
% lr =1;

% im = 'couple';
% nSig = 20;
% h = 200;
% w = 230;
% s =50;
% f =5;
% lr = 2;

% im = 'boat';
% nSig = 30;
% h = 200;
% w =352;
% s =50;
% f =5;
% lr = 2;

% im = 'cameraman';
% nSig = 30;
% h = 40;
% w =122;
% s =45;
% f =3;
% lr =1;


% im = 'couple';
% nSig = 30;
% h = 140;
% w =110;
% s =50;
% f =5;
% lr =1;

% im = 'peppers';
% nSig = 40;
% h = 240;
% w =310;
% s =50;
% f =5;
% lr = 2;

% im = 'peppers';
% nSig = 40;
% h = 120;
% w =115;
% s =70;
% f =4;
% lr = 1;

% im = 'monarch';
% nSig = 40;
% h = 65;
% w =180;
% s =45;
% f =3;
% lr = 2;

% im = 'house';
% nSig = 40;
% h = 110;
% w =25;
% s =45;
% f =3;
% lr = 1;

% im = 'airfield';
% nSig = 50;
% h = 300;
% w =400;
% s =50;
% f =5;
% lr = 2;

% im = 'airplane';
% nSig = 50;
% h = 150;
% w = 50;
% s =90;
% f =3;
% lr = 1;

% im = 'boat';
% nSig = 50;
% h = 250;
% w =75;
% s =65;
% f =4;
% lr = 1;

% im = 'airfield';
% nSig = 75;
% h = 370;
% w = 365;
% s =70;
% f =4;
% lr =2;

% im = 'hill';
% nSig = 75;
% h = 280;
% w = 80;
% s =40;
% f =6;
% lr = 1;


% im = 'cameraman';
% nSig = 75;
% h = 80;
% w = 120;
% s =40;
% f =3;
% lr = 1;

% im = 'leaves';
% nSig = 75;
% h = 50;
% w =25;
% s =50;
% f =3;
% lr =1;

% im = 'man';
% nSig = 100;
% h = 200;
% w = 50;
% s =90;
% f =3;
% lr = 1;

% im = 'baboon';
% nSig = 100;
% h =320;
% w = 90;
% s =60;
% f =4.5;
% lr = 1;

% im = 'hill';
% nSig = 75;
% h =280;
% w = 80;
% s =40;
% f =7;
% lr = 1;
% 
% im = 'baboon';
% nSig = 50;
% h =40;
% w = 340;
% s =70;
% f =4;
% lr = 2;


% im = 'hill';
% nSig = 50;
% h =280;
% w = 80;
% s =40;
% f =6;
% lr = 1;

% im = 'man';
% nSig = 50;
% h =160;
% w = 40;
% s =50;
% f =5;
% lr = 1;

im = 'barbara';
nSig = 40;
h =160;
w = 40;
s =50;
f =5;
lr = 1;

%% ours
% name = sprintf('../Denoising_20160123_VBEMNSSBPFA_UnknownNoise/Gau/Mixed_DenoisedGaussian_%s_%d.png',im,nSig);
% image = imread(name);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Ours_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% image = imread(sprintf('./Noisy_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');

% %% Noise clinic
% image = imread( sprintf('./NoiseClinic/Gaussian/NC_Gau_%s_%d.png',im,nSig));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_NC_%d_%s.png',nSig,im);
% imwrite(outputimage,imname,'png');

% image = imread( sprintf('./PGPD_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_PGPD_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');

% image = imread( sprintf('./New_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_New_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');
% 
% image = imread( sprintf('./WNNM_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_WNNM_%d_%s.jpg','br',nSig,im);
% imwrite(outputimage,imname,'jpg');

%% BM3D
% image = imread( sprintf('C:/Users/csjunxu/Desktop/JunXu/Paper/Image&Video Denoising/BM3D TIP2007/code/BM3Dresults/Gaussian/BM3D_%d_%s.png',nSig,im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('%s_BM3D_%d_%s.jpg','br',nSig,im);
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