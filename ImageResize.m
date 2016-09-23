clear;

Original_image_dir  =    './';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i =1:im_num
    Im = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    RIm = imresize(Im,0.5);
    imwrite(RIm, [Original_image_dir 'resize_' im_dir(i).name]);
end