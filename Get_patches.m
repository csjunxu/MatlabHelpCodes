function   [X, DC] =  Get_patches( im,ps, step)
% 
% Extract image patches from image 'im', the size of patches is ps x ps
% the overlapping patches are not partially overlapped controlled by the parameter step 
[h, w]  =  size(im);
maxr         =  h-ps+1;
maxc         =  w-ps+1;
r         =  1:step:maxr;
r         =  [r r(end)+1:maxr];
c         =  1:step:maxc;
c         =  [c c(end)+1:maxc];
X = zeros(ps^2,length(r)*length(c),'single');
k    =  0;
for i  = 1:ps
    for j  = 1:ps
        k    =  k+1;
        blk     =  im(r-1+i,c-1+j);
        X(k,:) =  blk(:)';
    end
end
% remove the mean of each patch
DC = mean(X);
X = bsxfun(@minus,X,DC);