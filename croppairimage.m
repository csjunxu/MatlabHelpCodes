% given paired noisy and clean images with high resolutions, this function crops these
% images into smaller parts with paired regions
clear;
Original_GT_dir  =    '../Projects/RID_Dataset/20170105mean/';
GTpath = fullfile(Original_GT_dir, '*.png');
GT_dir  = dir(GTpath);
I =  im2double( imread(fullfile(Original_GT_dir, GT_dir(1).name)) );

Original_image_dir  =    '../Projects/RID_Dataset/20170105/';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);
% set the image size to 512x512
height = 512;
width = 512;
for i = 1:10
    nI =  im2double( imread(fullfile(Original_image_dir, im_dir(i).name)) );
    S = regexp(im_dir(i).name, '\.', 'split');
    fprintf('The image is %s.\n', S{1});
    [h, w, ch]=size(nI);
    %% 1. randomly generate position index
    hi = randi( h - height + 1 );
    wi = randi( w - width + 1 );
    %% 2. crop paired images
    cropI = I( hi : hi + height - 1, wi : wi + width - 1, : );
    cropnI = nI( hi : hi + height - 1, wi : wi + width - 1, : );
    %% 3. write images
    imname = sprintf('ourdata/%s_part_%d.png', S{1}, i);
    imwrite(cropnI,imname);
    gtname = sprintf('ourdata/GT%s_part_%d.png', S{1}, i);
    imwrite(cropI,gtname);
end