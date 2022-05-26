%% Filtros no domínio da frequência

%% Filtro Passa-baixa

I = imread('s_PelvisRadiography.jpg');
ampl2 = rgb2gray(I);

limsx  = [-size(ampl2,1)/2 (size(ampl2,1)/2 -1)];
limsy  = [-size(ampl2,2)/2 (size(ampl2,2)/2 -1)];
[mx,my] = ndgrid(limsx(1):limsx(2),limsy(1):limsy(2));
sigma = 50;   % largura da gaussiana
 
gaus2dB = exp(-(mx.^2 + my.^2) ./ (2*sigma^2));

% imagem do filtro

figure(1);
imagesc(gaus2dB);
axis on
colorbar

%% Imagem com o filtro

% imagem normal

J = rgb2gray(I);
% figure(2); imagesc(J);
% colormap gray;

% magnitude no espaço-k

Y = fft2(J);
Z1 = abs(Y);

% figure(3); imagesc(fftshift(Z1));
% colormap gray;

% aplicando o filtro no espaço-k

img = fftshift(Y) .* gaus2dB;
% figure(4); imagesc(abs(img));
% colormap gray;

% imagem normal filtrada

Z2 = ifft2(fftshift(img));
figure(5); imagesc(abs(Z2));
colormap gray;
