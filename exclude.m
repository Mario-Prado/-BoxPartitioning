function [ subBoxes,numberOfSubBoxes ] = exclude( B_in,B) 
% Given a box B and a subbox B_in, this function excludes B_in from B and
% partitions the remaining region into sub-boxes 

n =length(B(:,1));

aux = zeros(n,2,2*n);

numberOfSubBoxes = 0;
B0 = B; 
splittable = 1;
while splittable == 1
    [ splittable, C, D ] = split( B_in, B0 );   % At this spliting, B_in stays inside the box D and outside %
    if splittable == 1                          % the box C.                                                %
       numberOfSubBoxes = numberOfSubBoxes + 1; %                                                           %
       aux(:,:,numberOfSubBoxes) = C;           %                                                           %      
       B0 = D;                                  % That is why we assing D to B0                             %
    end
end

subBoxes = aux(:,:,1:numberOfSubBoxes);

end

