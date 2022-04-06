% Prática 1

% 2. Digite na janela de comando os itens em negrito e preencha a tabela. 

% % π
% pi;
% 
% % Raiz imaginária
% i;
% j;
% 1i;
% 1j;
% 
% % Precisão numérica relativa 
% eps;
% 
% % Menor número real
% realmin;
% 
% % Maior número real
% realmax;
% 
% % Inf - Infinito. Exemplo: 1/0
% 1/0;
% 
% % NaN - Not a number (não número). Exemplo: 0/0
% 0/0;
% 
% % 3. O formato de exibição dos números na tela é configurado pelo comando format.
% 
% % pi
% % 
% % format short
% % 
% % format long
% % 
% % format short e
% % 
% % format long e
% % 
% % format short g
% % 
% % format long g
% % 
% % format hex
% % 
% % format bank
% % 
% % format +
% % 
% % format rational
% 
% % 4. Os vetores e matrizes são definidos da seguinte forma:  Os valores numéricos devem ser definidos entre [ ]  Valores de colunas são delimitados por ‘ ‘ ou ,  Linhas são delimitadas por ; 
% % Com essas informações, crie: 
% 
% % a. Um escalar de valor qualquer na variável x1. 
% 
% x1 = 10;
% 
% % b. Um vetor linha com quaisquer cinco valores na variável vet1. 
% 
% vet1 = [1, 2, 3, 4, 5];
% 
% % c. Um vetor coluna com quaisquer cinco valores na variável vet2. 
% 
% vet2 = [6; 7; 8; 9; 10];
% 
% % d. Uma matriz 3x3 com quaisquer valores na variável mat1. 
% 
% mat1 = [1,2,3;4,5,6;7,8,9];
% 
% % e. Uma matriz 4x2 com quaisquer valores na variável Mat1. 
% 
% Mat1 = [1,2;3,4;5,6;7,8];

% % 6. Crie as matrizes 2x2 abaixo nas variáveis x e y, e utilize os operadores da tabela 3 para completá-la.
% 
% x = [1,2;3,4];
% y = [5,6;7,8];

% % O comando help elfun lista as funções matemáticas elementares e help matfun lista as funções matriciais do MATLAB

% a = 0.48;
% b = [2, 3; 5, -8];

% v1 = 0:2:10;
% v2 = 30:-3:10;
% v3 = 10:3:30;

% Gerar o gráfico de: f(x) = seno(x), 0 < x < 2*pi (com incremento de 0.1) 

% x = 0:0.1:2*pi;
% f = sin(x);
% 
% plot(x,f);
% grid on;

% m = [1 2 3 4 5; 6 7 8 9 10; 11 12 13 14 15];
% 
% m(2,4)
% m(11)
% n = m(2,2:4)
% o = m(:,3)
% p = m(1,:)
% q = m(3,3:end)
% r = m([1 13; 3 15]) 
