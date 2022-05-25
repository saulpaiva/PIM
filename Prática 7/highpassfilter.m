%% Passa-alta

I = imread('s_PelvisRadiography.jpg');
ampl2 = rgb2gray(I);

limsx  = [-size(ampl2,1)/2 (size(ampl2,1)/2 -1)];
limsy  = [-size(ampl2,2)/2 (size(ampl2,2)/2 -1)];
[mx,my] = ndgrid(limsx(1):limsx(2),limsy(1):limsy(2));
sigma = 30;   % largura da gaussiana
 
gaus2dA = 1 - exp((mx.^2 + my.^2) ./ (2*sigma^2));

figure
imagesc(gaus2dA);
axis on
colorbar