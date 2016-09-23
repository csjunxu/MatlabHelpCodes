function Xm = NonLocalMean2(X,index,dist,nlm,pres,mr,mc,Win)
% non-local means for each patch in patch set, method 2
wei         =  exp( - dist( 1:nlm  ) ./ pres );
wei         =  wei./( sum( wei )+eps );
Xm(:,1) = X(:,index( 1:nlm ) )*wei';
I     =   (1:size(X,2));
I     =   reshape(I, mr, mc);
parfor i = 2:length(index)
    % the position of indc(index)-th patch of X is (row,col) in original image
    off = index(i);
    row = mod(off,mr);
    if row ==0
        row=mr;
    end
    col = ceil( off/mc );
    
    rmin    =   max( row-Win, 1 );
    rmax    =   min( row+Win, mr );
    cmin    =   max( col-Win, 1 );
    cmax    =   min( col+Win, mc);
    
    idx     =   I(rmin:rmax, cmin:cmax);
    idx     =   idx(:);
    neighbor       =   X(:,idx);
    seed       =   X(:,off);
    
    dis     =   (neighbor(1,:) - seed(1)).^2;
    for k = 2:ps^2
        dis   =  dis + (neighbor(k,:) - seed(k)).^2;
    end
    dis   =  dis./ps^2;
    [~,ind]   =  sort(dis);
    wei         =  exp( -dis(ind( 1:nlm ) ) ./pres);
    wei         =  wei./( sum( wei )+eps );
    Xm(:,i) = X(:,idx( ind( 1:nlm ) ))*wei';
end