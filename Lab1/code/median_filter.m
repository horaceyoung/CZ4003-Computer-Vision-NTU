% reading in the image gn, sp and filter them with medfilt2 size 3 and 5
gn = imread('ntu_gn.jpg');
figure
imshow(gn);

P1 = medfilt2(gn,[3 3]);
figure
imshow(P1);

P2 = medfilt2(gn,[5 5]);
figure
imshow(P2);

sp = imread('ntu_sp.jpg');
figure
imshow(sp);

P3 = medfilt2(sp,[3 3]);
figure
imshow(P3);

P4 = medfilt2(sp,[5 5]);
figure
imshow(P4);