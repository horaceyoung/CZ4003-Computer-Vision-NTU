% read in and display the image
P = imread('pck_int.jpg');
figure;
imshow(P)

% obtain Fourier transform F of image P, and compute spectrum
F = fft2(P);
S = abs(F);
figure;
imagesc(fftshift(S.^0.1));
colormap('default');

% display the power spectrum without fftshift and select locations of peaks
figure;
imagesc(S.^0.1);
colormap('default');

% set zeros to neighboring elements
x1 = 249; y1 = 16;
x2 = 9; y2 = 240;
F1 = F;
F1(y1-2:y1+2, x1-2:x1+2) = 0;
F1(y2-2:y2+2, x2-2:x2+2) = 0;
S1 = abs(F1);
figure;
imagesc(S1.^0.1);
colormap('default');

% inverse the FT and display the image
P2 = uint8(ifft2(F1));
figure;
imshow(real(P2))
