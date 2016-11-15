clear;
TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\1_Results\Real_NoisyImage\';
TT_fpath = fullfile(TT_Original_image_dir, 'vehicle.png');
TT_im_dir  = dir(TT_fpath);
im_num = length(TT_im_dir);

% 6 7 8 10 12 14
for i = 1
    fprintf('%s: \n',TT_im_dir(i).name);
    S = regexp(TT_im_dir(i).name, '\.', 'split');
    im = S{1};
    h = 200;
    w = 250;
    s = 50;
    f = 5;
    lr = 2;
    
        %% Noisy
        image = imread(fullfile(TT_Original_image_dir, TT_im_dir(i).name));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_Noisy_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% BM3D
        image = imread( sprintf('1_Results/Real_BM3D/BM3D_Real_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_BM3D_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% WNNM
        image = imread( sprintf('1_Results/Real_WNNM/WNNM_Real_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_WNNM_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% MLP
        image = imread(sprintf('1_Results/Real_MLP/MLP_Real_10_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_MLP_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% CSF
        image = imread(sprintf('1_Results/Real_CSF/CSF_Real_15_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_CSF_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% TRD
        image = imread(sprintf('1_Results/Real_TRD/TNRD_Real_15_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_TRD_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% NeatImage
        image = imread( sprintf('1_Results/Real_NeatImage/NI_%s.jpg',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_NI_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% Noise Clinic
        image = imread( sprintf('1_Results/Real_NoiseClinic/NC_Real_%s.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_NC_%s.png',im);
        imwrite(outputimage,imname,'png');
        
    for para = 0.001:0.001:0.01
        %% Guided
        image = imread(sprintf(['1_Results/Real_Guided/Guided_RID_6x6x3x10_' im '_' num2str(para) '.png']));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf(['br_Guided_RID_6x6x3x10_' im '_' num2str(para) '.png']);
        imwrite(outputimage,imname,'png');
    end
end

% % DSCDL
% image = imread(sprintf('1_Results/Real_DSCDL/DSCDL_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_DSCDL_%s.png',im);
% imwrite(outputimage,imname,'png');

% %% CPSDL
% image = imread(sprintf('1_Results/Real_CPSDL/CPSDL_%s.png',im));
% [ outputimage ] = boxandresize( image, h,w,s, f,lr);
% imname = sprintf('br_CPSDL_%s.png',im);
% imwrite(outputimage,imname,'png');

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
