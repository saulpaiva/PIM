% especificar o vetor de frequências senoidais
sinefreq = linspace(.0001,.2,50);  % unidades arbitrárias
% linspace(X1, X2, N) gera um vetor linha de N pontos 
% linearmente igualmente espaçados entre X1 e X2.%  

%  Ângulo de rotação
sinephas = pi/3;
% Frequência entre 0 e 0.5
freq = 0.3;
% Iniciar a onda senoidal
lims = [-50 50];
[x,y] = ndgrid(lims(1):lims(2),lims(1):lims(2));
xp = x*cos(sinephas) + y*sin(sinephas);
% Computar o seno
img = sin(2*pi*freq*xp);
figure(1); imshow(img);

Y = fft2(img);

Z = abs(Y);
figure(2); imshow(Z,[]);
