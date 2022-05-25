I = imread('s_PelvisRadiography.jpg');
J = rgb2gray(I);
figure, imshow(J);

Y = fft2(J);

Z = abs(Y);
figure, imshow(Z,[]);

W = fftshift(Z);
figure, imshow(W,[]);

% P = angle(Y);
% figure, imshow(P,[]);
% 
% X = fftshift(P);
% figure, imshow(X,[]);

P = angle(Y);
figure, imshow(P,[]);


X = fftshift(P);
figure, imshow(X,[]);

