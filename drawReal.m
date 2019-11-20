clear;
TT_Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR-2020\VisualCompare\';
TT_fpath = fullfile(TT_Original_image_dir, '0006_6.png');
TT_im_dir  = dir(TT_fpath);
im_num = length(TT_im_dir);

scale = 0.3;
for i = 1
    fprintf('%s: \n',TT_im_dir(i).name);
    S = regexp(TT_im_dir(i).name, '\.', 'split');
    im = S{1};
    h = 150;
    w = 200;
    s = 50;
    f = 5;
    lr = 2;

%     h = 120;
%     w = 100;
%     s = 50;
%     f = 5;
%     lr = 1;
    
        %% Noisy
        image = imread(fullfile(TT_Original_image_dir, TT_im_dir(i).name));
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_Noisy_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% BM3D
        image = imread('0006_6_CBM3D_30.89_0.9501.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_CBM3D_%s.png',im);
        imwrite(outputimage,imname,'png');
        
        %% GCBD
        image = imread('0006_6_GCBD_30.73_0.9446.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_GCBD_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% DnCNN
        image = imread('0006_6_dncnn+_31.56_0.9575.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_dncnn+_%s.png',im);
        imwrite(outputimage,imname,'png');
        
                %% CBDNet
        image = imread('0006_6_CBDNet_31.06_0.9554.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_CBDNet_%s.png',im);
        imwrite(outputimage,imname,'png');
    
        %% N2N
        image = imread('0006_6_N2N_28.75_0.9067.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_N2N_%s.png',im);
        imwrite(outputimage,imname,'png');
    
    
        %% NeatImage
        image = imread('0006_6_NI_28.43_0.9126.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_NI_%s.png',im);
        imwrite(outputimage,imname,'png');
        
        %% NAC
        image = imread('0006_6_NAC_31.27_0.9564.png');
        [ outputimage ] = boxandresize( image, h,w,s, f,lr);
        outputimage = imresize(outputimage, scale);
        imname = sprintf('br_NAC_%s.png',im);
        imwrite(outputimage,imname,'png');

end