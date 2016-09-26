clear;

Original_image_dir  =    '3_Results/';
Denoised_image_dir  =    '3_Results/';
fpath = fullfile(Original_image_dir, '*mean.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
PSNR = zeros(1,im_num);
SSIM = zeros(1,im_num);
for i = 1:im_num
    %% read clean image
    IMname = regexp(im_dir(i).name, '\.', 'split');
    IMname = IMname{1};
    IMin0=im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    imname = ['NI_5dmark3_iso3200_' num2str(i) '_real_filtered.jpg'];
    IMin=im2double(imread(fullfile(Denoised_image_dir, imname)));
    PSNR(i) = csnr( IMin*255,IMin0*255, 0, 0 );
    SSIM(i)  =  cal_ssim( IMin*255, IMin0*255, 0, 0 );
end
mPSNR = mean(PSNR);
mSSIM = mean(SSIM);
fprintf('The average PSNR = %2.4f, SSIM = %2.4f. \n', mPSNR,mSSIM);
result = ['NI_Canon_EOS_5D_Mark3_ISO_3200_real.mat'];
save(result,'PSNR','SSIM','mPSNR','mSSIM');