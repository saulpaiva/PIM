I = phantom(256);
% imshow(I);
figure, imshow(I);
colorbar();
colormap(gray);

% suavização da imagem
kblur = 1/10*[1 1 1; 1 2 1; 1 1 1];
kboxblur = 1/9*[1 1 1; 1 1 1; 1 1 1];
k5gauss = 1/256*[1 4 6 4 1; 4 16 24 16 4; 16 24 36 24 16; 1 4 6 4 1];

C1 = conv2(I,kboxblur);
figure, imshow(C1);
colorbar();
colormap(gray);

% realce (sharpening)

ksharp = [-1 -1 -1; -1 9 -1; -1 -1 -1];

% ksharp = [0 -1 0; -1 5 -1; 0 -1 0];

C2 = conv2(I,ksharp);
figure, imshow(C2);
colorbar();
colormap(gray);

% detecção de bordas

kxcentral = 1/2*[0 0 0; -1 0 1; 0 0 0];
kycentral = 1/2*[0 -1 0; 0 0 0; 0 1 0];
% ksharp = [-1 -1 -1; -1 8 -1; -1 -1 -1];

C3 = conv2(I,kxcentral);
figure, imshow(C3);
colorbar();
colormap(gray);

C4 = conv2(I,kycentral);
figure, imshow(C4);
colorbar();
colormap(gray);

% magnitude do gradiente

Mag = sqrt(C3.*C3 + C4.*C4);
figure, imshow(Mag);
colorbar();
colormap(gray);

Vec = quiver(C1,Mag);
figure, Vec;
colorbar();
colormap(gray);

% magnitude total do gradiente

S = sum(Mag,'all');

% ângulo da direção do gradiente



% plt = scatter3(C3,C4,Ang);