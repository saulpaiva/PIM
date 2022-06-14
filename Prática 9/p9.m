%% Criando a matriz do phantom virtual Shepp-Logan com 256 x 256

I = phantom(256);
% figure(100);
% imagesc(I);
% title("Phantom virtual Shepp-Logan (256 x 256)");
% colormap gray;
% colorbar;

%% Obtenção das projeções do phantom para ângulos de 0 a 180 graus

% Número de projeções: 45, 90 e 180

theta1 = 0:1:180;
theta2 = 0:2:180;
theta3 = 0:4:180;

% Geração dos sinogramas

R1 = radon(I,theta1);
% figure(1);
% imagesc(R);
% title("180 projeções");
% colormap hot;
% colorbar;

R2 = radon(I,theta2);
% figure(2);
% imagesc(R);
% title("90 projeções");
% colormap hot;
% colorbar;

R3 = radon(I,theta3);
% figure(3);
% imagesc(R);
% title("45 projeções");
% colormap hot;
% colorbar;

%% Reconstrução da imagem do phantom a partir dos sinogramas gerados acima

% unfiltered

% I1 = iradon(R1,theta1,'linear','none');
% figure(4);
% imagesc(I1);
% title("Unfiltered 180 projeções");
% colormap hot;
% colorbar;
% 
% I2 = iradon(R2,theta2,'linear','none');
% figure(5);
% imagesc(I2);
% title("Unfiltered 90 projeções");
% colormap hot;
% colorbar;
% 
% I3 = iradon(R3,theta3,'linear','none');
% figure(6);
% imagesc(I3);
% title("Unfiltered 45 projeções");
% colormap hot;
% colorbar;

% Ram-Lak filter (default)

% I1 = iradon(R1,theta1);
% figure(4);
% imagesc(I1);
% title("Ram-Lak filter (default) 180 projeções");
% colormap hot;
% colorbar;
% 
% I2 = iradon(R2,theta2);
% figure(5);
% imagesc(I2);
% title("Ram-Lak filter (default) 90 projeções");
% colormap hot;
% colorbar;
% 
% I3 = iradon(R3,theta3);
% figure(6);
% imagesc(I3);
% title("Ram-Lak filter (default) 45 projeções");
% colormap hot;
% colorbar;

% Ram-Lak filter (default) usando interpolação nearest
% Obs: a interpolação linear (default) ja foi observada anteriormente

I1 = iradon(R1,theta1,'nearest');
figure(4);
imagesc(I1);
title("Interpolação nearest 180 projeções");
colormap hot;
colorbar;

I2 = iradon(R2,theta2,'nearest');
figure(5);
imagesc(I2);
title("Interpolação nearest 90 projeções");
colormap hot;
colorbar;

I3 = iradon(R3,theta3,'nearest');
figure(6);
imagesc(I3);
title("Interpolação nearest 45 projeções");
colormap hot;
colorbar;
