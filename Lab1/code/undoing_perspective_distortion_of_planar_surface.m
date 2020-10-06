close all;
% read in the image
P = imread('book.jpg');
P = rgb2gray(P);
figure;
imshow(P);

% get the corners of the image
[x,y] = ginput(4);
x_target = [0;210;210;0];
y_target = [0;0;297;297];

% set_up the matrix and verify the result
A =[[x(1),y(1),1,0,0,0,-x_target(1)*x(1),-x_target(1)*y(1)];
    [0,0,0,x(1),y(1),1,-y_target(1)*x(1),-y_target(1)*y(1)];
    [x(2),y(2),1,0,0,0,-x_target(2)*x(2),-x_target(2)*y(2)];
    [0,0,0,x(2),y(2),1,-y_target(2)*x(2),-y_target(2)*y(2)];
    [x(3),y(3),1,0,0,0,-x_target(3)*x(3),-x_target(3)*y(3)];
    [0,0,0,x(3),y(3),1,-y_target(3)*x(3),-y_target(3)*y(3)];
    [x(4),y(4),1,0,0,0,-x_target(4)*x(4),-x_target(4)*y(4)];
    [0,0,0,x(4),y(4),1,-y_target(4)*x(4),-y_target(4)*y(4)];];
v = [x_target(1);y_target(1);x_target(2);y_target(2);x_target(3);y_target(3);x_target(4);y_target(4)];
u =A\v;

U = reshape([u;1], 3, 3)'; 
w = U*[x'; y'; ones(1,4)];
w = w ./ (ones(3,1) * w(3,:));
disp(w);

% wrap up in image and diaplay it
T = maketform('projective', U');
P2 = imtransform(P, T, 'XData', [0 210], 'YData', [0 297]);
figure;
imshow(P2);
