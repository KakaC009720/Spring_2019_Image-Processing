g=rgb2gray(imread('gull.png'));

gg1=imnoise(g,'gaussian',0,0.01);

a1=fspecial('average',3);
ga1=imfilter(gg1,a1);
figure(1),imshow(ga1);
% �����o�i

gw1=wiener2(gg1,[3,3]);
figure(2),imshow(gw1);
% wiener�o�i
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg2=imnoise(g,'gaussian',0,0.02);

a1=fspecial('average',3);
ga2=imfilter(gg2,a1);
figure(3),imshow(ga2);
% �����o�i

gw2=wiener2(gg2,[3,3]);
figure(4),imshow(gw2);
% wiener�o�i
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg3=imnoise(g,'gaussian',0,0.05);

a1=fspecial('average',3);
ga3=imfilter(gg3,a1);
figure(5),imshow(ga3);
% �����o�i

gw3=wiener2(gg3,[3,3]);
figure(6),imshow(gw3);
% wiener�o�i
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg4=imnoise(g,'gaussian',0,0.1);

a1=fspecial('average',3);
ga4=imfilter(gg4,a1);
figure(7),imshow(ga4);
% �����o�i

gw4=wiener2(gg4,[3,3]);
figure(8),imshow(gw4);
% wiener�o�i