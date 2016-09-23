%--------------------------------------------------------------------------
% Find noisy images in CC according to the name of clean images in
% directory :
% C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_MeanImage\
%--------------------------------------------------------------------------
clear;
Original_image_dir = 'C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_BM3D\parts\';
fpath = fullfile(Original_image_dir, '*.png');
im_dir  = dir(fpath);
im_num = length(im_dir);

CCPSNR = [];
CCSSIM = [];
for i = 2:im_num
    IM = im2double(imread(fullfile(Original_image_dir, im_dir(i).name)));
    S = regexp(im_dir(i).name, '_', 'split');
    image = ['C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_BM3D\parts\' im_dir(i).name];
    eval(['delete ' image]);
    IMname = 'BM3D';
    for j = 4:length(S)
        IMname = [IMname '_' S{j}];
    end
    imwrite(IM, ['C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_BM3D\parts\' IMname]);
end
mCCPSNR = mean(CCPSNR);
mCCSSIM = mean(CCSSIM);
save(['C:\Users\csjunxu\Desktop\CVPR2017\cc_Results\Real_BM3D.mat'],'CCPSNR','mCCPSNR','CCSSIM','mCCSSIM');