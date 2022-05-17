I = imread('medtest.png');

% Adição de ruídos

J1 = imnoise(I,'gaussian',0.01);
J2 = imnoise(I,'gaussian',0.001);
J3 = imnoise(I,'salt & pepper',0.02);
J4 = imnoise(I,'salt & pepper',0.05);

figure, imshow(I)

figure, imshow(J1)
figure, imshow(J2)
figure, imshow(J3)
figure, imshow(J4)

% Filtros espaciais

% K = imgaussfilt(J1,0.8);

% G = fspecial('gaussian',3,0.8);
% K = imfilter(J1,G);

K1 = medfilt2(J1);
K2 = medfilt2(J2);
K3 = medfilt2(J3);
K4 = medfilt2(J4);

% figure, imshow(J1), figure, imshow(J2), figure, imshow(J3), figure, imshow(J4)
figure, imshow(K1), figure, imshow(K2), figure, imshow(K3), figure, imshow(K4)

% Seguimentação do coração

I = im2double(imread('medtest.png'));
x=170; y=234; t=0.09;
J = regiongrowing(I,x,y,t); 
figure, imshow(I+J);