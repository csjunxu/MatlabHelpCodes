clear;

dataset = 'GT';

Original_image_dir  =    ['./' dataset '/cropped_faces'];
fpath = fullfile(Original_image_dir, '*.jpg');
im_dir  = dir(fpath);
im_num = length(im_dir);

writefilepath  = ['C:/Users/csjunxu/Desktop/Classification/Dataset/' dataset '/'];
if ~isdir(writefilepath)
    mkdir(writefilepath);
end

datargb = cell(im_num, 1);
datagray = cell(im_num, 1);
datacrop = [];
gnd = [];
for i =1:im_num
    Imrgb = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    datargb{i,1} = Imrgb;
    Imgray = rgb2gray(Imrgb);
    datagray{i,1} = Imgray;
    Imcrop = imresize(Imgray, [64 48]);
    datacrop = [datacrop Imcrop(:)];
    S = regexp(im_dir(i).name, '_', 'split');
    label = str2num(S{1}(2:end));
    gnd = [gnd label];
end
save GT/GTface.mat datargb datagray gnd

for i = 1:length(unique(gnd))
    Y(:,:,i) = datacrop(:,gnd==i);    
end
save GT/GTfaceCrop.mat Y gnd