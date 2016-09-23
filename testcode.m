clear;
rand('seed',0);
I = randn([256 256],'single');
method = '1';
prescal = 10;
nlsp = 5; %非局部相似块的个数
[h,w] = size(I);
ps = 8; %patch size
par.nlmk = min(nlsp,1);
Win = 2*ps;
step = 3;
maxr =  h-ps+1;
maxc = w-ps+1;
r = [1:step:maxr];
r =  [r r(end)+1:maxr];
lenr = length(r);
c = [1:step:maxc];
c =  [c c(end)+1:maxc];
lenc = length(c);
%把图像块转化为列向量
Y = zeros(ps^2,lenr*lenc,'single'); %patches used for denosing
X = zeros(ps^2,maxr*maxc,'single'); % overlapping patches used for finding similar patches
k = 0;
for i = 1:ps
    for j =1:ps
        k = k+1;
        ablk  =  I(i:end-ps+i,j:end-ps+j);
        X(k,:) = ablk(:)';
    end
end
tic
%对每个图像块设置一个标签，第几个图像块
Index     =   (1:size(X,2));
Index    =   reshape(Index, maxr, maxc);
blk_arr   =  zeros(nlsp, lenr*lenc,'single');
nlX = zeros(ps^2*nlsp, lenr*lenc,'single');
% nlXcr = zeros(ps^2*nlsp, lenr*lenc,'single');
EX = zeros(ps^2, maxr*maxc,'single');
W = zeros(ps^2, maxr*maxc,'single');
for  i  =  1 :lenr
    for  j  =  1 : lenc
        row     =   r(i);
        col     =   c(j);
        offX     =  (col-1)*maxr + row; %index of the chosen patch (seed) in X
        offnlX    =  (j-1)*lenr + i; % index of the chosen patch (seed) in Y
        
        rmin    =   max( row-Win, 1 );
        rmax    =   min( row+Win, maxr );
        cmin    =   max( col-Win, 1 );
        cmax    =   min( col+Win, maxc );
        
        idx     =   Index(rmin:rmax, cmin:cmax);
        idx     =   idx(:);
        
        neighbor       =   X(:,idx); % the patches around the seed in X
        seed       =   X(:,offX);   % X(:,offX) =Y(:,offY)
        dis     =   (neighbor(1,:) - seed(1)).^2;
        for k = 2:ps^2
            dis   =  dis + (neighbor(k,:) - seed(k)).^2;
        end
        dis = dis./ps^2;
        [sortdis,ind]   =  sort(dis);
        indc        =  idx( ind( 1:nlsp ) );
        blk_arr(:,offnlX)  =  indc;  % the indexes (in X, not in Y) of the nlsp patches most similar to the seed
        temp = X( : , indc ); % the nlsp patches most similar to the seed
        nlX(:,offnlX) = temp(:); % the patch set : the seed followed by its most similar nlsp-1 patches
        
        EX(:,blk_arr(:,offnlX)) = EX(:,blk_arr(:,offnlX))+temp;
        W(:,blk_arr(:,offnlX)) = W(:,blk_arr(:,offnlX))+ones(ps^2,nlsp);
        
        
        %
        %         rDC(:,offnlX) = mean(temp,2);
        %         tempr = bsxfun(@minus, temp, rDC(:,offnlX));
        %         cDC(:,offnlX) = mean(tempr,1);
        %         tempc = bsxfun(@minus,tempr,cDC(:,offnlX)');
        %         nDC_nlX(:,offnlX) = tempc(:);
        %         switch method
        %             case '1'
        %                 % non-local means for each patch in patch set, method 1
        %                 tempm = NonLocalMean1(temp,sortdis,nlsp,prescal);
        %                 tempm = tempm*ones( 1,nlsp );
        %                 nlXm(:,offnlX) = tempm(:);
        %             case '2'
        %                 % non-local means for each patch in patch set, method 2
        %                 tempm = NonLocalMean2(X,indc,sortdis,par);
        %                 nlXm(:,offnlX) = tempm(:);
        %         end
        %
        %         rDCm(:,offnlX) = mean(tempm,2);
        %         tempmr = bsxfun(@minus, tempm, rDC(:,offnlX));
        %         cDCm(:,offnlX) = mean(tempmr,1);
        %         tempmc = bsxfun(@minus,tempmr,cDC(:,offnlX)');
        %         nDC_nlXm(:,offnlX) = tempmc(:);
    end
end

% %data projection
% [ eigvector , ~ ] = PCA( nDC_nlX );
% pcaM = eigvector(:,:);% min(size(eigvector,2),ps^2*nlsp)
% Proj_nDC_nlX = pcaM' * nDC_nlX;
% % data reconstruction
% Rec_nDC_nlX = pcaM*Proj_nDC_nlX;
%
% % add row mean and column mean
% cDC = cDC(ones(1,ps^2)'*[1:nlsp],:);
% nlXc = bsxfun(@plus,Rec_nDC_nlX,cDC);
% rDC = rDC(reshape( ( ones(1,nlsp)'*(1:ps^2) )',[1 45])' , : ); % equivalent to : rDC = rDC(repmat([1:ps^2],1,nlsp),:);
% nlXcr = bsxfun(@plus, nlXc, rDC);
% tic
% im_out   =  zeros(h,w,'single');
% im_wei   =  zeros(h,w,'single');
% for t = 1:size(blk_arr,1)
%     tempY = nlX((t-1)*ps^2+1:t*ps^2,1:size(blk_arr,2)); % the set of patches whose indexes are the i-th row of blk_arr
%     newr = mod( blk_arr(t,:) , maxr );
%     newr(newr==0) = maxr;
%     newr = reshape(newr',[lenr lenc]);
%     newc = ceil( blk_arr(t,:)/maxc );
%     newc = reshape(newc',[lenr lenc]);
%     k = 0;
%     for i = 1:ps
%         for j =1:ps
%             k    =  k+1;
%             temaY = reshape( tempY(k,:)', [lenr lenc]);
%             for  m = 1:length(r)
%                 for n = 1:length(c)
%                     im_out(newr(m,n)-1+i,newc(m,n)-1+j)  =  im_out(newr(m,n)-1+i,newc(m,n)-1+j) + temaY(m,n);
%                     im_wei(newr(m,n)-1+i,newc(m,n)-1+j)  =  im_wei(newr(m,n)-1+i,newc(m,n)-1+j) + 1;
%                 end
%             end
%         end
%     end
% end
% toc

%tic
% im_out   =  zeros(h,w,'single');
% im_wei   =  zeros(h,w,'single');
% newr = mod( blk_arr , maxr );
% newr(newr==0) = maxr;
% newc = ceil( blk_arr/maxc );
% k = 0;
% for i = 1:ps
%     for j =1:ps
%         k    =  k+1;
%         tempX = nlX([k:ps^2:ps^2*nlsp],:);
%         for  m = 1:size(newr,1)
%             for n = 1:size(newr,2)
%                 im_out(newr(m,n)-1+i,newc(m,n)-1+j)  =  im_out(newr(m,n)-1+i,newc(m,n)-1+j) + tempX(m,n);
%                 im_wei(newr(m,n)-1+i,newc(m,n)-1+j)  =  im_wei(newr(m,n)-1+i,newc(m,n)-1+j) + 1;
%             end
%         end
%     end
% end
% im_out  =  im_out./im_wei;
% toc

% tic
im_out   =  zeros(h,w,'single');
im_wei   =  zeros(h,w,'single');
newr = [1:maxr];
newc = [1:maxc];
k = 0;
for i = 1:ps 
    for j =1:ps
        k    =  k+1;
        im_out(newr-1+i,newc-1+j)  =  im_out(newr-1+i,newc-1+j) + reshape( EX(k,:)', [maxr maxc]);
        im_wei(newr-1+i,newc-1+j)  =  im_wei(newr-1+i,newc-1+j) +reshape( W(k,:)', [maxr maxc]);
    end
end
im_out  =  im_out./im_wei;
toc

















