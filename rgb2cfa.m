function cfa = rgb2cfa(rgb)
cfa = zeros(size(rgb,1), size(rgb,2));
cfa(1:2:end,2:2:end) = rgb(1:2:end,2:2:end,1);
cfa(1:2:end,1:2:end) = rgb(1:2:end,1:2:end,2);
cfa(2:2:end,2:2:end) = rgb(2:2:end,2:2:end,2);
cfa(2:2:end,1:2:end) = rgb(2:2:end,1:2:end,3);
% or
%             cfa(1:h,1:w)=rgb(:,:,2);
%             cfa(1:2:h,2:2:w)=rgb(1:2:h,2:2:w,1);
%             cfa(2:2:h,1:2:w)=rgb(2:2:h,1:2:w,3);
