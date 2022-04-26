% lê a imagem Abdomen.dcm do roteiro anterior

info = dicominfo("Abdomen.dcm");
Y = dicomread(info);

% transforma a imagem para uint8, e transforma a escala de cinza para a
% exibição da imagem em uma faixa adequada

figure(1);
Y1 = ((double(Y) - 0)./(2305 - 0));
Y1 = uint8(255*(Y1));
imshow(Y1);
colorbar

% gera o histograma da imagem

figure(2);
imhist(Y1);

ylim auto;

% constrói a função de distribuição acumulada do histograma (normalizada)

hist = imhist(Y1);
cum_hist = cumsum(hist);
sum_hist = sum(hist);
norm = cum_hist/sum_hist;

figure(3);
plot(norm);

% equaliza o histograma da imagem original e plota a nova figura equalizada

figure(4);
eq = histeq(Y1);
imshow(eq);
colorbar

% mostra o histograma da imagem equalizada

figure(5);
imhist(eq);
h_eq = imhist(eq);

% mostra a função de distribuição acumulada após equalizar o histograma

figure(6);
cum_h_eq = cumsum(h_eq);
sum_h_eq = sum(h_eq);
eqnorm = cum_h_eq/sum_h_eq;
plot(eqnorm);

% janelamento proposto na imagem equalizada

figure(7);
Y2 = ((double(eq) - 70)./(255 - 80));
Y2 = uint8(255*(Y2));
imshow(Y2);
colorbar