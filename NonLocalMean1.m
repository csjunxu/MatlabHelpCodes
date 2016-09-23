% functions
function Xm = NonLocalMean1(X,dist,nls,pres)
wei         =  exp( -dist( 1:nls ) ./ pres );
wei         =  wei./( sum( wei )+eps );
Xm = X*wei';