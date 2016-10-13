clear;
GT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_ccnoise_denoised_part\';
GT_fpath = fullfile(GT_Original_image_dir, '*mean.png');
TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_ccnoise_denoised_part\';
TT_fpath = fullfile(TT_Original_image_dir, '*_ours.png');
GT_im_dir  = dir(GT_fpath);
TT_im_dir  = dir(TT_fpath);
im_num = length(TT_im_dir);

method = 'Real_ccnoise_denoised_part';

PSNR = [];
SSIM = [];
for i = 1:im_num
    IM = im2double(imread( fullfile(TT_Original_image_dir,TT_im_dir(i).name) ));
    IM_GT = im2double(imread(fullfile(GT_Original_image_dir, GT_im_dir(i).name)));
    PSNR = [PSNR csnr( IM*255,IM_GT*255, 0, 0 )];
    SSIM = [SSIM cal_ssim( IM*255, IM_GT*255, 0, 0 )];
end
mPSNR = mean(PSNR);
mSSIM = mean(SSIM);
save(['C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\', method, '_CCNoise_' num2str(im_num) '.mat'],'PSNR','mPSNR','SSIM','mSSIM');