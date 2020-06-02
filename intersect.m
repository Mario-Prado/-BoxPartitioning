function [C, intersection] = intersect( A, B ) 
% If the boxes A and B are disjoint, this function returns intersection = 0
% and C a degenerated box; else, this function returns intersection=1 and the
% box C = the intersection between  A and B.

n = length(A(:,1));

C = zeros(n,2);

for j=1:n
    if (B(j,2) <= A(j,1) || B(j,1) >= A(j,2))
        intersection = 0;
        return
    end
end

intersection = 1;

for j=1:n
    C(j,1) = max([A(j,1) B(j,1)]);
    C(j,2) = min([A(j,2) B(j,2)]);
end

end

