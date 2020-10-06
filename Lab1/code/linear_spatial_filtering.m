% crasting the filters, the second argument in fspecial is regarded as a
% matrix [5 5]
h1 = fspecial('gaussian',5,1);
h1 = (h1/sum(h1(:)));
figure;
mesh(h1);

h2 = fspecial('gaussian',5,2);
h2 = (h2/sum(h2(:)));
figure;
mesh(h2);

% read in the image
gn = imread('ntu_gn.jpg');
figure;
imshow(gn);

% filter the image using filters created above
P1 = uint8(conv2(gn, h1));
figure;
imshow(P1);

P2 = uint8(conv2(gn, h2));
figure;
imshow(P2);

%read in the image 'ntu-sp' and display it
sp = imread('ntu_sp.jpg');
figure;
imshow(sp);

% filter the image 'ntu-sp' and display it
P3 = uint8(conv2(sp, h1));
figure;
imshow(P3);

P4 = uint8(conv2(sp, h2));
figure;
imshow(P4);
