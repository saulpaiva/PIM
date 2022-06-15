%% Criando a matriz do phantom virtual Shepp-Logan com 256 x 256

% I = phantom(256);
% figure(100);
% imagesc(I);
% title("Phantom virtual Shepp-Logan (256 x 256)");
% colormap gray;
% colorbar;

%% Obtenção das projeções do phantom para ângulos de 0 a 180 graus

% % Número de projeções: 45, 90 e 180

% theta1 = 0:1:180;
% theta2 = 0:2:180;
% theta3 = 0:4:180;

% % Geração dos sinogramas

% R1 = radon(I,theta1);
% figure(1);
% imagesc(R1);
% title("180 projeções");
% colormap hot;
% colorbar;

% R2 = radon(I,theta2);
% figure(2);
% imagesc(R2);
% title("90 projeções");
% colormap hot;
% colorbar;

% R3 = radon(I,theta3);
% figure(3);
% imagesc(R3);
% title("45 projeções");
% colormap hot;
% colorbar;

%% Reconstrução da imagem do phantom a partir dos sinogramas gerados acima

% % unfiltered

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

% % Ram-Lak filter (default)

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

% % Ram-Lak filter (default) usando interpolação nearest
% % Obs: a interpolação linear (default) ja foi observada anteriormente

% I1 = iradon(R1,theta1,'nearest');
% figure(4);
% imagesc(I1);
% title("Interpolação nearest 180 projeções");
% colormap hot;
% colorbar;
% 
% I2 = iradon(R2,theta2,'nearest');
% figure(5);
% imagesc(I2);
% title("Interpolação nearest 90 projeções");
% colormap hot;
% colorbar;
% 
% I3 = iradon(R3,theta3,'nearest');
% figure(6);
% imagesc(I3);
% title("Interpolação nearest 45 projeções");
% colormap hot;
% colorbar;

%% Adicionado ruído branco gaussiano ao phantom e refeito os passos anteriores

% I = phantom(256);
% 
% % adds zero-mean, Gaussian white noise with variance of 0.01 to grayscale image I.
% J = imnoise(I,'gaussian');
% 
% figure(200);
% imagesc(J);
% title("Phantom Shepp-Logan (256 x 256) com ruído branco gaussiano");
% colormap gray;
% colorbar;
% 
% % Número de projeções: 45, 90 e 180
% 
% theta1 = 0:1:180;
% theta2 = 0:2:180;
% theta3 = 0:4:180;
% 
% % Geração dos sinogramas
% 
% R1 = radon(J,theta1);
% figure(1);
% imagesc(R1);
% title("180 projeções");
% colormap hot;
% colorbar;
% 
% R2 = radon(J,theta2);
% figure(2);
% imagesc(R2);
% title("90 projeções");
% colormap hot;
% colorbar;
% 
% R3 = radon(J,theta3);
% figure(3);
% imagesc(R3);
% title("45 projeções");
% colormap hot;
% colorbar;
% 
% % Ram-Lak filter (default)
% 
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

%% Sinogramas do phantom usando a função fanbeam

I = phantom(256);
% figure(100);
% imagesc(I);
% title("Phantom virtual Shepp-Logan (256 x 256)");
% colormap gray;
% colorbar;

% D = 200;
% % D = sqrt(size(I,1)^2 + size(I,2)^2);
% F = fanbeam(I,D);
% figure(7);
% imagesc(F);
% title('Geração do sinograma usando a função fanbeam (D = 200)');
% colormap hot;
% colorbar;
% 
% % reconstrução usando ifanbeam
% 
% I1 = ifanbeam(F,D);
% figure(8);
% imagesc(I1);
% title('Reconstrução da imagem usando a função ifanbeam (D = 200)');
% colormap hot;
% colorbar;

% % testando diferentes parâmetros de FanSensorSpacing (default = 1)
% 
% D = 200;
% F = fanbeam(I,D,'FanSensorSpacing',2.0);
% 
% figure(7);
% imagesc(F);
% title('Geração do sinograma fanbeam (FanSensorSpacing = 2.0)');
% colormap hot;
% colorbar;
% 
% % reconstrução usando ifanbeam
% 
% I1 = ifanbeam(F,D,'FanSensorSpacing',2.0);
% figure(8);
% imagesc(I1);
% title('Reconstrução da imagem usando a função ifanbeam (D = 200)');
% colormap hot;
% colorbar;