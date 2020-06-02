function  remainingBoxes  = processing(innerBoxes, motherBox )
% this function excludes from de box  "motherBox" the set of sub-boxes 
% "innerBoxes", partitionating the remeining region into sub-boxes of 
% the "motherBox" that are stored in the three-dimensional matrix called 
% "remaniningBoxes".

% A n-dimensional  box  motherBox, say motherBox = [a1,b1]x[a2,b2]x...x[an, bn],
% must be passed to this function as a n by 2 matrix whose i-th line is given by 
% the i-th interval [ai,bi]. The set of N n-dimensional sub-boxes "innerBoxes" must be
% passed as a n by 2 by N matrix, each layer for storing one box.

numberOfInnerBoxes =  length(innerBoxes(1,1,:));

motherSet = motherBox;

for k = 1 : numberOfInnerBoxes
    auxBoxes  = multipleDecomposition( motherSet,innerBoxes(:,:,k) );
    motherSet = auxBoxes;
end

remainingBoxes = auxBoxes;

end
