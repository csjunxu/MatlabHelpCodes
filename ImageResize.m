clear;

Original_image_dir  =    'C:\Users\csjunxu\Documents\GitHub\CVPR2017_GuidedPG_Latex\imagessupp\';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i =1:im_num
    Im = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    RIm = imresize(Im,0.7);
    imwrite(RIm, ['C:\Users\csjunxu\Documents\GitHub\CVPR2017_GuidedPG_Latex\imagessupp\resize_' im_dir(i).name]);
end