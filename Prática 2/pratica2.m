% Prática 2

% Lê o arquivo e armazena uma matriz na dada variável (I)
I = imread('Color.tiff');


% plota a figura
% figure(1);
% imagesc(I);

% figure(2);
% image(I);

% imshow(I);

% Ir = I (:, :, 1); 
% Ig = I (:, :, 2);
% Ib = I (:, :, 3);
% imshow(I);
% figure, imshow(Ir);
% figure, imshow(Ig);
% figure, imshow(Ib);

% converte para escala de cinza:

% J = 0.2989*Ir + 0.5870*Ig + 0.1140*Ib;
% figure(1);
% imshow(J);
% figure(2);
% imshow(I);

% ou:

J = rgb2gray(I);
imshow(J);