% D= displayDictionaryElementsAsImage(pgv,1, 10, 9, 9);
% displays the dictionary atoms as blocks. For activation, the dictionary D
% should be given, as also the number of rows (numRows) and columns
% (numCols) for the atoms to be displayed. X and Y are the dimensions of
% each atom.
load PGs.mat;
for i = 1:size(Px,2)  
    hold on;   
    displayColorDictionaryElementsAsImage(Px(:,(i-1)*10+1:(i-1)*10+10), 10, 1, 6, 6, 3);
%     subplot('Position',[0 0.6 0.3 0.3]);
%     displayDictionaryElementsAsImage(X(:,71916:71920), 1, 5, ps, ps);
%     subplot('Position',[0 0.3 0.3 0.3]);
%     displayDictionaryElementsAsImage(DC(:,71916:71920), 1, 5,  ps, ps);
%     subplot('Position',[0 0 0.3 0.3]);
%     displayDictionaryElementsAsImage(Xv(:,71916:71920), 1, 5, ps, ps);
    
%     subplot('Position',[0 0 0.3 0.3]);
%     displayDictionaryElementsAsImage(X(:,(blk_arr(i)-1)*10+1:(blk_arr(i)-1)*10+5), 1, 5, 8, 8);
%     subplot('Position',[0.3 0 0.3 0.3]);
%     displayDictionaryElementsAsImage(DC(:,(blk_arr(i)-1)*10+1:(blk_arr(i)-1)*10+5), 1, 5,  8, 8);
%     subplot('Position',[0.6 0 0.3 0.3]);
%     displayDictionaryElementsAsImage(Xv(:,(blk_arr(i)-1)*10+1:(blk_arr(i)-1)*10+5), 1, 5, 8, 8);
end
