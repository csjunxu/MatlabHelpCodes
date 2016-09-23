Original_image_dir = './';
fpath = fullfile(Original_image_dir, '*.mat');
im_dir  = dir(fpath);
im_num = length(im_dir);
for i = 1:im_num
    load(fullfile(Original_image_dir, im_dir(i).name));
    S = regexp(im_dir(i).name, '\.', 'split');
    IMname = S{1};
    IM_Noisy = im2double(img_noisy);
    imwrite(IM_Noisy, ['CC_Noisy_' IMname '.png']);
    IM_Mean  = im2double(img_mean);
    imwrite(IM_Mean, ['CC_Mean_' IMname '.png']);
    % color or gray image
    [h,w,ch] = size(IM_Noisy);
    fprintf('%s : \n',IMname);
    hh = [0:500:h,h];
    ww = [0:500:w,w];
    num_part = 0;
    listh = 1 : length(hh)-1;
    listw = 1 : length(ww)-1;
    IMout = zeros(h,w,ch);
    %%
    for nh = listh
        for nw = listw
            num_part = num_part + 1;
            fprintf('Part %d/%d : \n',num_part, (length(hh)-1)*(length(ww)-1));
            IM_Noisy_part = IM_Noisy(hh(nh)+1:hh(nh+1),ww(nw)+1:ww(nw+1),:);
            imwrite(IM_Noisy_part, ['parts/CC_Noisy_' IMname '_' num2str(num_part) '.png']);
            IM_Mean_part = IM_Mean(hh(nh)+1:hh(nh+1),ww(nw)+1:ww(nw+1),:);
            imwrite(IM_Mean_part, ['parts/CC_Mean_' IMname '_' num2str(num_part) '.png']);
        end
    end
end