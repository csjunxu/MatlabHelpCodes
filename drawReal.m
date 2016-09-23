%% case 1
im = 'Real_windmill';
h = 200;
w = 340;
s =50;
f =6;
lr = 1;

% %% case 2
% im = 'Real_Niaochaogirls';
% h = 170;
% w = 530;
% s =60;
% f =5;
% lr = 2;

% %% case 3
% im = 'Real_SolvayConf1927';
% h = 400;
% w = 220;
% s =80;
% f =4;
% lr = 1;

% %% case 4
% im = 'Real_Fibers';
% h = 260;
% w = 240;
% s =50;
% f =5;
% lr = 1;

% %% case 5
% im = 'Real_ISO1600_AlexanderSemenov';
% h = 300;
% w = 590;
% s =60;
% f =5;
% lr = 2;

% %% case 5
% im = 'Real_cyclist';
% h = 480;
% w = 70;
% s =60;
% f =5;
% lr = 1;

% %% case 6
% im = 'Real_Dog';
% h = 170;
% w = 70;
% s = 50;
% f =4;
% lr = 1;

% %% case 7
% im = 'Real_library';
% h = 420;
% w = 70;
% s = 80;
% f =4;
% lr = 1;

% %% case 8
% im = 'Real_Niaochaogirls';
% h = 190;
% w = 440;
% s = 70;
% f =4;
% lr = 2;

% %% case 8
% im = '20160218_1';
% h = 190;
% w = 440;
% s = 70;
% f =4;
% lr = 2;

% %% Noisy
% image = imread(sprintf('%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_%s.png',im);
% imwrite(outputimage,imname,'png');

%% BPFA
image = imread( sprintf('./BPFA/Real/BPFA_%s_Denoised_Real.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_BPFA_%s.png',im);
imwrite(outputimage,imname,'png');


% %% DSCDL_BID
% image = imread(sprintf('DSCDL_BID_AN_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_DSCDL_BID_AN_%s.png',im);
% imwrite(outputimage,imname,'png');


% %% BM3D
% image = imread( sprintf('./BM3D/Real/BM3D_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_BM3D_%s.png',im);
% imwrite(outputimage,imname,'png');

%% PGPD
image = imread( sprintf('./PGPD/Real/PGPD_%s.png',im));
[ outputimage ] = boxandresize( image, h,w,s, f,lr);
imname = sprintf('br_PGPD_%s.png',im);
imwrite(outputimage,imname,'png');


% %% WESNR 
% image = imread( sprintf('./WESNR/Real/WESNR_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WESNR_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% Noise clinic
% image = imread( sprintf('./NoiseClinic/Real/NC_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_NC_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% NeatImage
% image = imread( sprintf('./NeatImage/NI_%s.jpg',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_NI_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% ours
% name = sprintf('./VBGMBPFA/Real/VBGMBPFA_Real32_less1_%s.png',im);
% image = imread(name);
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_Ours_%s.png',im);
% imwrite(outputimage,imname,'png');


% %% WNNM 
% image = imread( sprintf('./WNNM/Real/WNNM_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_WNNM_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% TwoPhase 
% image = imread( sprintf('./TwoPhase/Real/TwoPhase_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_TwoPhase_%s.png',im);
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