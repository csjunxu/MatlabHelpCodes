clear;
GT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_MeanImage\';
GT_fpath = fullfile(GT_Original_image_dir, '*.png');
TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_NoisyImage\';
TT_fpath = fullfile(TT_Original_image_dir, '*.png');
% GT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_ccnoise_denoised_part\';
% GT_fpath = fullfile(GT_Original_image_dir, '*mean.png');
% TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_ccnoise_denoised_part\';
% TT_fpath = fullfile(TT_Original_image_dir, '*real.png');
GT_im_dir  = dir(GT_fpath);
TT_im_dir  = dir(TT_fpath);
im_num = length(TT_im_dir);

% load cc_Results/GuideBetterIndex.mat;
for i = 46
    %         i = index(j);
    fprintf('%s: \n',TT_im_dir(i).name);
    S = regexp(TT_im_dir(i).name, '\.', 'split');
    im = S{1};
    h = 230;
    w = 400;
    s = 40;
    f = 6;
    lr = 2;
    %% GT
    image = imread(fullfile(GT_Original_image_dir, GT_im_dir(i).name));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Mean_%s.png',im);
    imwrite(outputimage,imname,'png');
    IM_GT = im2double(imread(fullfile(GT_Original_image_dir, GT_im_dir(i).name)));
    
    %% Noisy
    image = imread(fullfile(TT_Original_image_dir, TT_im_dir(i).name));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Noisy_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(fullfile(TT_Original_image_dir, TT_im_dir(i).name)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('Noisy: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% CBM3D
    image = imread( sprintf('cc_Results/Real_CBM3D/CBM3D_BID_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_CBM3D_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread( sprintf('cc_Results/Real_CBM3D/CBM3D_BID_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('CBM3D: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% MLP
    image = imread(sprintf('cc_Results/Real_MLP/MLP_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_MLP_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_MLP/MLP_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('MLP: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% WNNM
    image = imread( sprintf('cc_Results/Real_WNNM/WNNM_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_WNNM_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread( sprintf('cc_Results/Real_WNNM/WNNM_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('WNNM: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% CSF
    image = imread(sprintf('cc_Results/Real_CSF/CSF_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_CSF_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_CSF/CSF_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('CSF: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% TRD
    image = imread(sprintf('cc_Results/Real_TRD/TRD_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_TRD_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_TRD/TRD_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('TRD: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    %% NeatImage
    image = imread( sprintf('cc_Results/Real_NeatImage/NI_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_NI_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread( sprintf('cc_Results/Real_NeatImage/NI_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('NI: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    % Noise clinic
    image = imread( sprintf('cc_Results/Real_NoiseClinic/NC_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_NC_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread( sprintf('cc_Results/Real_NoiseClinic/NC_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('NC: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    % Offline
    image = imread(sprintf('cc_Results/Real_Offline/Offline_RGB_BID_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Offline_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_Offline/Offline_RGB_BID_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('Offline: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    % Online
    image = imread(sprintf('cc_Results/Real_Online/Online_RGB_BID_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Online_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_Online/Online_RGB_BID_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('Online: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    % Guided
    image = imread(sprintf('cc_Results/Real_Guided/Guided_%s.png',im));
    [ outputimage ] = boxandresize( image, h,w,s, f,lr);
    imname = sprintf('br_Guided_%s.png',im);
    imwrite(outputimage,imname,'png');
    image = im2double(imread(sprintf('cc_Results/Real_Guided/Guided_%s.png',im)));
    PSNR = csnr( image*255, IM_GT*255, 0, 0 );
    SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
    fprintf('Guided: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    
    if im_num==15
        %% CCNoise
        S = regexp(TT_im_dir(i).name, '_', 'split');
        im = S{1};
        for ii = 2:length(S)-1
            im = [im '_' S{ii}];
        end
        image = imread(sprintf('cc_Results/Real_ccnoise_denoised_part/%s_ours.png',im));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        imname = sprintf('br_CCNoise_%s.png',im);
        imwrite(outputimage,imname,'png');
        image = im2double(imread(sprintf('cc_Results/Real_ccnoise_denoised_part/%s_ours.png',im)));
        PSNR = csnr( image*255, IM_GT*255, 0, 0 );
        SSIM = cal_ssim( image*255, IM_GT*255, 0, 0 );
        fprintf('CCNoise: PSNR/SSIM = (%2.2fdB/%2.4f) \n', PSNR, SSIM);
    end
end
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
