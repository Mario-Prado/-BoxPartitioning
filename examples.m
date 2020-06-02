% Example 1: to exclude the boxes [0,1]x[0,1] and [0.5,1.5]x[0,1.5] from the box [0,2]x[0,2] and split the remaining region 
%into sub-boxes, run  you run the foolowing:

%hold on
%motherBox = [0 2;0 2];
%patch('Faces',[1 2 3 4 1],'Vertices',[0 0;2 0;2 2;0 2],'FaceColor','g','FaceAlpha',0.3)
%innerBoxes = zeros(2,2,2);
%innerBoxes(:,:,1) = [0 1;0 1];
%patch('Faces',[1 2 3 4 1],'Vertices',[0 0;1 0;1 1;0 1],'FaceColor','b','FaceAlpha',0.5)
%innerBoxes(:,:,2) = [0.5 1.5; 0 1.5];
%patch('Faces',[1 2 3 4 1],'Vertices',[0.5 0;1.5 0;1.5 1.5;0.5 1.5],'FaceColor','b','FaceAlpha',0.5) 
%disp('To split the green region into sub-boxes, press "dbcont"\nTo exit tress "dbquit"');
%keyboard
%remainingBoxes  = processing(innerBoxes, motherBox )
%for n=1:length(remainingBoxes(1,1,:))
%   B = remainingBoxes(:,:,n);
%   patch('Faces',[1 2 3 4 1],'Vertices',[B(1,1) B(2,1);B(1,2) B(2,1);B(1,2) B(2,2);B(1,1) B(2,2)],'FaceColor','r','FaceAlpha',0.8)
%end


% Example 2: if the inner boxes are not completly contained in the mother box, 
% it will be excluded from the mother box the  intersection of the inner boxes with the mother box. For instance,
% to exclude the boxes [-1,1]x[0,1] and [0.5,1.5]x[0,1.5] from the box [0,2]x[0,2] and split the remaining region 
% into sub-boxes, run  you run the foolowing:

% hold on
% motherBox = [0 2;0 2];
% patch('Faces',[1 2 3 4 1],'Vertices',[0 0;0 2;2 2;2 0],'FaceColor','g','FaceAlpha',0.3)
% innerBoxes = zeros(2,2,2);
% innerBoxes(:,:,1) = [-1 1;0 1];
% patch('Faces',[1 2 3 4 1],'Vertices',[-1 0;1 0;1 1;-1 1],'FaceColor','b','FaceAlpha',0.3)
% innerBoxes(:,:,2) = [0.5 1.5; 0 1.5];
% patch('Faces',[1 2 3 4 1],'Vertices',[0.5 0;1.5 0;1.5 1.5;0.5 1.5],'FaceColor','b','FaceAlpha',0.3)
% disp('To split the green region into sub-boxes, press "dbcont"\nTo exit tress "dbquit"');
% keyboard
% remainingBoxes  = processing(innerBoxes, motherBox )
%for n=1:length(remainingBoxes(1,1,:))
%   B = remainingBoxes(:,:,n);
%   patch('Faces',[1 2 3 4 1],'Vertices',[B(1,1) B(2,1);B(1,2) B(2,1);B(1,2) B(2,2);B(1,1) B(2,2)],'FaceColor','r','FaceAlpha',0.8)
%end

% Example 3: to exclude three dimensiona boxes [0,1]x[0,1]x[0,1] and [0.5,1.5]x[0.5,1.5][0.5,1.5] from the 
%box [0,2]x[0,2]x[0,2] and split the remaining region into sub-boxes, run  you run the foolowing:

 %hold on
 %motherBox = [0 2;0 2;0 2];
 %MATRIZ_DE_VERTICES = [0 0 0; 0 0 2; 2 0 2; 2 0 0; 2 2 0; 0 2 0; 0 2 2; 2 2 2]; 
 %MARIX_DE_FACES = [1 2 3 4;1 4 5 6;5 6 7 8;1 6 7 2;2 3 8 7; 3 4 5 8];
 %patch('Faces',MARIX_DE_FACES,'Vertices',MATRIZ_DE_VERTICES,'FaceColor','g','FaceAlpha',0.2)
 %innerBoxes = zeros(3,2,2);
 %innerBoxes(:,:,1) = [0 1;0 1;0 1];
 %MATRIZ_DE_VERTICES = [0 0 0; 0 0 1; 1 0 1; 1 0 0; 1 1 0; 0 1 0; 0 1 1; 1 1 1]; 
 %patch('Faces',MARIX_DE_FACES,'Vertices',MATRIZ_DE_VERTICES,'FaceColor','b','FaceAlpha',1)
 %innerBoxes(:,:,2) = [0.5 1.5; 0.5 1.5; 0.5 1.5];
 %MATRIZ_DE_VERTICES = [0.5 0.5 0.5; 0.5 0.5 1.5; 1.5 0.5 1.5; 1.5 0.5 0.5; 1.5 1.5 0.5; 0.5 1.5 0.5; 0.5 1.5 1.5; 1.5 1.5 1.5]; 
 %patch('Faces',MARIX_DE_FACES,'Vertices',MATRIZ_DE_VERTICES,'FaceColor','b','FaceAlpha',1)
 %disp('To split the green region into sub-boxes, press "dbcont"');
 %keyboard
 %remainingBoxes  = processing(innerBoxes, motherBox );
 %for n=1:length(remainingBoxes(1,1,:))
 %    B = remainingBoxes(:,:,n);
 %    MARIX_DE_VERTICES=[B(1,1) B(2,1) B(3,1);B(1,1) B(2,1) B(3,2);B(1,2) B(2,1) B(3,2);B(1,2) B(2,1) B(3,1);...
 %    B(1,2) B(2,2) B(3,1);B(1,1) B(2,2) B(3,1); B(1,1) B(2,2) B(3,2); B(1,2) B(2,2) B(3,2)];
 %    patch('Faces',MARIX_DE_FACES,'Vertices',MARIX_DE_VERTICES,'FaceColor','r','FaceAlpha',0.85)
 %end
