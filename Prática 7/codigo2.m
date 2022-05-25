%% Filtros no domínio da frequência

%% Passa-baixa

I = imread('s_PelvisRadiography.jpg');
ampl2 = rgb2gray(I);

limsx  = [-size(ampl2,1)/2 (size(ampl2,1)/2 -1)];
limsy  = [-size(ampl2,2)/2 (size(ampl2,2)/2 -1)];
[mx,my] = ndgrid(limsx(1):limsx(2),limsy(1):limsy(2));
sigma = 50;   % largura da gaussiana
 
gaus2dB = exp(-(mx.^2 + my.^2) ./ (2*sigma^2));
 
figure
imagesc(gaus2dB);
axis on
colorbar

%% Imagem com a máscara

J = rgb2gray(I);
figure, imagesc(J);

Y = fft2(J);

Z = abs(Y);
figure, imagesc(Z);

img = fftshift(Y) .* gaus2dB;
figure, imagesc(abs(img));

Z2 = ifft2(fftshift(img));
figure, imagesc(abs(Z2));