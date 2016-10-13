clear;

Original_image_dir  =    './1_IQCompare/Nikon_D800_ISO_3200_A3_66_G_Off_On_h230_w400_s40_f6_lr2/';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i =1:im_num
    Im = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    RIm = imresize(Im,0.5);
    imwrite(RIm, [Original_image_dir 'resize_' im_dir(i).name]);
end