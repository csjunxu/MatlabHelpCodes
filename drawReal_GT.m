GT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_MeanImage\';
GT_fpath = fullfile(GT_Original_image_dir, '*.png');
TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_NoisyImage\';
TT_fpath = fullfile(TT_Original_image_dir, '*.png');
GT_im_dir  = dir(GT_fpath);
TT_im_dir  = dir(TT_fpath);
im_num = length(TT_im_dir);

load cc_Results/PGPDbetterIndex.mat;

% CC_Noisy_Canon_EOS_5D_Mark3_ISO_3200_C1_52.png: 
%     h = 230;
%     w = 300;
%     s = 50;
%     f = 5;
%     lr = 2;

% CC_Noisy_Canon_EOS_5D_Mark3_ISO_3200_C2_44.png: 
%     h = 220;
%     w = 50;
%     s = 70;
%     f = 4;
%     lr = 1;

% CC_Noisy_Canon_EOS_5D_Mark3_ISO_3200_C3_26.png
%     h = 180;
%     w = 290;
%     s = 50;
%     f = 5;
%     lr = 2;

% CC_Noisy_Canon_EOS_5D_Mark3_ISO_3200_C3_51.png
%     h = 50;
%     w = 180;
%     s = 60;
%     f = 5;
%     lr = 2;
for i = 1
    fprintf('%s: \n',TT_im_dir(index(i)).name);
    S = regexp(TT_im_dir(index(i)).name, '\.', 'split');
    im = S{1};
    h = 85;
    w = 180;
    s = 50;
    f = 6;
    lr = 2;
    %% GT
    image = im2double(imread(fullfile(GT_Original_image_dir, GT_im_dir(index(i)).name)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Mean_%s.png',im);
    imwrite(outputimage,imname,'png');
    IM_GT = im2double(imread(fullfile(GT_Original_image_dir, GT_im_dir(index(i)).name)));
    
    %% Noisy
    image = im2double(imread(sprintf('cc_Results/Real_NoisyImage/%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Noisy_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('Noisy: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
        
    %% BM3D
    image = im2double(imread( sprintf('cc_Results/Real_BM3D/BM3D_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_BM3D_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('BM3D: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% MLP
    image = im2double(imread(sprintf('cc_Results/Real_MLP/MLP_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_MLP_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('MLP: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% WNNM
    image = im2double(imread( sprintf('cc_Results/Real_WNNM/WNNM_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_WNNM_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('WNNM: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% CSF
    image = im2double(imread(sprintf('cc_Results/Real_CSF/CSF_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_CSF_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('CSF: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% TRD
    image = im2double(imread(sprintf('cc_Results/Real_TRD/TRD_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_TRD_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('TRD: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% NeatImage
    image = im2double(imread( sprintf('cc_Results/Real_NeatImage/NI_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_NI_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('NI: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% Noise clinic
    image = im2double(imread( sprintf('cc_Results/Real_NoiseClinic/NC_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_NC_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('NC: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %     %% DSCDL
    %     image = imread(sprintf('cc_Results/Real_DSCDL/DSCDL_%s.png',im));
    %     [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    %     imname = sprintf('br_DSCDL_%s.png',im);
    %     imwrite(outputimage,imname,'png');
    %     PSNR = csnr( image, IM_GT, 0, 0 );
    %     SSIM = cal_ssim( image, IM_GT, 0, 0 );
    %     fprintf('DSCDL: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    %
    %     %% CPSDL
    %     image = imread(sprintf('cc_Results/Real_CPSDL/CPSDL_%s.png',im));
    %     [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    %     imname = sprintf('br_CPSDL_%s.png',im);
    %     imwrite(outputimage,imname,'png');
    %     PSNR = csnr( image, IM_GT, 0, 0 );
    %     SSIM = cal_ssim( image, IM_GT, 0, 0 );
    %     fprintf('CPSDL: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% PGPD
    image = im2double(imread(sprintf('cc_Results/Real_PGPD/PGPD_3Chs_BID_%s.png',im)));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_PGPD_%s.png',im);
    imwrite(outputimage,imname,'png');
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('PGPD: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
end


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
