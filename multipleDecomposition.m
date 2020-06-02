function [ remainingSubBoxes ] = multipleDecomposition(testingBoxes, Box )
% In this function "Box" is a box, of course, and the parameter "testingBoxes" is a set of boxes, 
% say B1,B2,...,Bn. This function makes the partition into boxes - to be sotored in the output 
% "remainingSubBoxes" - of each of the regions: B1-(B1\cap Box ), ... , Bn-(Bn\cap Box ).

N = length(testingBoxes(1,1,:));
n = length(Box(:,1));
remainingSubBoxes = zeros(n,2,N*2*n);

numberRemBoxes = 0;
for j = 1:N
    [C, intersection] = intersect( testingBoxes(:,:,j), Box );
    if intersection == 1
        [ newSubBoxes, numberNewBoxes ] = exclude( C, testingBoxes(:,:,j));
        remainingSubBoxes(:,:,numberRemBoxes +  1:numberRemBoxes +  numberNewBoxes) = newSubBoxes;
        numberRemBoxes = numberRemBoxes +  numberNewBoxes;
        continue
    end
    if intersection == 0
        numberRemBoxes = numberRemBoxes +  1;
        remainingSubBoxes(:,:,numberRemBoxes +  1) = testingBoxes(:,:,j);
    end
end

remainingSubBoxes = remainingSubBoxes(:,:,1: numberRemBoxes);


end



