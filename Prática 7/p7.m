%% Imagens de magnitude e fase no espaço-k

% I = imread('s_PelvisRadiography.jpg');
% J = rgb2gray(I);
% figure(1); imagesc(J);
% colormap gray;
% 
% Y = fft2(J);
% Z = abs(Y);
% 
% W = fftshift(Z);
% figure(2); imagesc(W);
% colormap gray;
% 
% P = angle(Y);
% X = fftshift(P);
% figure(3); imagesc(X);
% colormap gray;

%% Rotina para ler imagem, adicionar ruído poisson e filtrar usando um filtro passa-baixa

% Filtro Passa-baixa

I = imread('s_PelvisRadiography.jpg');
ampl2 = rgb2gray(I);

limsx  = [-size(ampl2,1)/2 (size(ampl2,1)/2 -1)];
limsy  = [-size(ampl2,2)/2 (size(ampl2,2)/2 -1)];
[mx,my] = ndgrid(limsx(1):limsx(2),limsy(1):limsy(2));
sigma = 100;   % largura da gaussiana
 
gaus2dB = exp(-(mx.^2 + my.^2) ./ (2*sigma^2));

% imagem do filtro

figure(1);
imagesc(gaus2dB);
axis on
colorbar

% imagem normal

J = rgb2gray(I);
% figure(2); imagesc(J);
% colormap gray;

% imagem com ruído poisson

P = imnoise(J,'poisson');
figure(3); imagesc(P);
colormap gray;

% magnitude no espaço-k

Y = fft2(P);
Z1 = abs(Y);
% figure(4); imagesc(fftshift(Z1));
% colormap gray;

% aplicando o filtro no espaço-k

img = fftshift(Y) .* gaus2dB;
% figure(5); imagesc(abs(img));
% colormap gray;

% imagem normal filtrada

Z2 = ifft2(fftshift(img));
figure(6); imagesc(abs(Z2));
colormap gray;