function [ splittable, C, D ] = split( B_in,B ) 
% The user or the algorithm that uses this function must be sure that the 
% box B_in lays inside the box B. This function returns splittable = 1 if B_in 
% is strictly contained in B or splittable = 0 if B_in = B. Also, 
% this function returns a box C that do not intersects the box B_in 
% and a box D that contains the box B_in and such that B = C union D.

n = length(B(:,1));

splittable = 1;

C = B;

D = B;

d=[0, 0];
for j = 1 : n
    if B_in(j,1)>B(j,1)
       d = [j,1];
       break
    end
    if B_in(j,2)<B(j,2)
       d = [j,2];
       break
    end
end

if d(2) == 0
    splittable = 0;
    return
end

if d(2) == 1
    splittable = 1;      
    C(j,2) = B_in(j,1); % --> the sub-box B_in stays inside the box D.%
    D(j,1)= B_in(j,1);   
    return
end

if d(2) == 2
    splittable = 1;      
    C(j,1) = B_in(j,2); % --> the sub-box B_in stays inside the box D.%
    D(j,2)= B_in(j,2);   
    return
end

end

