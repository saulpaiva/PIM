% 1.

% info = dicominfo('Abdomen.dcm');
% Y = dicomread(info);
% imshow(Y,[]); 

% a.

% imshow(Y);
% colorbar
% figure

% b.

% imshow(Y,[]); 
% colorbar
% figure

% c.

% imshow(Y,[1040 1100]); 
% colorbar

% info

% imtool(Y,[]);

% 2.

% Ler a imagem Abdomen.dcm

info = dicominfo('Abdomen.dcm');
Y = dicomread(info);

% Fazer o histograma (bins = 2000)

figure(1);
imhist(Y,2000);
xlim([0, max(Y(:))]);
% ylim([0, inf]);
ylim auto;

% Imagem original para comparação

figure(2);
I = imshow(Y,[0 4096]);

% multiplicação ou divisão altera o contraste

figure(3);
imagem2.tif = 2*Y;
I2 = imshow(imagem2.tif,[0 4096]);

% adição ou subtração altera o brilho

figure(4);
imagem3.tif = Y + 2000;
I3 = imshow(imagem3.tif,[0 4096]);
