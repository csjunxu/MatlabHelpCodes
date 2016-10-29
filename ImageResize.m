clear;

Original_image_dir  =    './1_IQCompare/Nikon_D600_ISO_3200_C1_96_h100_w220_s50_f5_lr1';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i =1:im_num
    Im = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    RIm = imresize(Im,0.5);
    imwrite(RIm, ['resize_' im_dir(i).name]);
end