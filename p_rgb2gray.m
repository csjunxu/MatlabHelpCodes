Original_image_dir = 'C:/Users/csjunxu/Desktop/Projects/4000images/';
fpath       =   fullfile(Original_image_dir, '*.bmp');
im_dir      =   dir(fpath);
im_num      =   length(im_dir);

for  i  =  1 : im_num
    RGB         =  imread(fullfile(Original_image_dir, im_dir(i).name));
    S = regexp(im_dir(i).name, '\.', 'split');
    fprintf('%s.\n',im_dir(i).name);
    GRAY = rgb2gray(RGB);
    imwrite(GRAY, [Original_image_dir S{1},'.png']);
end