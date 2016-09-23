clear,clc;
% Set the parameters
ps=8;
step = 3;
im         =   double( imread('kodak1.tif') )/255;
X =  Get_patches( im,ps, step);
varX = var(X);
[var, varind]=sort(varX,'descend');
for i =1:100
    subplot(10,10,i);
    imshow(reshape(X(:,varind(i)),[ps ps]));
end