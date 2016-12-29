fpath       =   fullfile('*.png');
im_dir      =   dir(fpath);
im_num      =   length(im_dir);

for  i  =  1 : im_num
    RGB         =  imread(fullfile( im_dir(i).name));
    GRAY = rgb2gray(RGB);
    name = strcat('gray_k',num2str(i),'.png');
    imwrite(GRAY,name);
end