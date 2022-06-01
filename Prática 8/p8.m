%% Questão 1
% Função cosseno

x = 0:10;
v = cos(x);
xq = 0:0.1:10;

% nearest

vq1 = interp1(x,v,xq,'nearest');

figure;
plot(x,v,'o',xq,vq1,':.');
title('Linear Interpolation (nearest)');

% linear

vq1 = interp1(x,v,xq,'linear');

figure;
plot(x,v,'o',xq,vq1,':.');
title('Linear Interpolation (linear)');

% cubic

vq1 = interp1(x,v,xq,'cubic');

figure;
plot(x,v,'o',xq,vq1,':.');
title('Linear Interpolation (cubic)');

% spline

vq1 = interp1(x,v,xq,'spline');

figure;
plot(x,v,'o',xq,vq1,':.');
ylim([-1 1]);
title('Linear Interpolation (spline)');

%% Questão 2
% criar um phanton 128 x 128

I = phantom(128);

figure;
img = imshow(I);
title('Original');

% method - 'nearest' (default) | 'bilinear' | 'bicubic'
% bbox - 'loose' (default) | 'crop'

figure;
J1 = imrotate(I,45,'nearest','crop');
img1 = imshow(J1);
title('nearest - crop');

figure;
J2 = imrotate(I,45,'nearest','loose');
img2 = imshow(J2);
title('nearest - loose');

%% Questão 3

figure;
J3 = imrotate(I,45,'nearest','crop');
img3 = imshow(J1);
title('nearest - crop');

figure;
J4 = imrotate(I,45,'bilinear','crop');
img4 = imshow(J2);
title('bilinear - crop');

figure;
J5 = imrotate(I,45,'bicubic','crop');
img5 = imshow(J2);
title('bicubic - crop');
