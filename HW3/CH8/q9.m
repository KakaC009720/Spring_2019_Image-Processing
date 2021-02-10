g=rgb2gray(imread('gull.png'));

gg1=imnoise(g,'gaussian',0,0.01);

a1=fspecial('average',3);
ga1=imfilter(gg1,a1);
figure(1),imshow(ga1);
% ¥­§¡Âoªi

gw1=wiener2(gg1,[3,3]);
figure(2),imshow(gw1);
% wienerÂoªi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg2=imnoise(g,'gaussian',0,0.02);

a1=fspecial('average',3);
ga2=imfilter(gg2,a1);
figure(3),imshow(ga2);
% ¥­§¡Âoªi

gw2=wiener2(gg2,[3,3]);
figure(4),imshow(gw2);
% wienerÂoªi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg3=imnoise(g,'gaussian',0,0.05);

a1=fspecial('average',3);
ga3=imfilter(gg3,a1);
figure(5),imshow(ga3);
% ¥­§¡Âoªi

gw3=wiener2(gg3,[3,3]);
figure(6),imshow(gw3);
% wienerÂoªi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
gg4=imnoise(g,'gaussian',0,0.1);

a1=fspecial('average',3);
ga4=imfilter(gg4,a1);
figure(7),imshow(ga4);
% ¥­§¡Âoªi

gw4=wiener2(gg4,[3,3]);
figure(8),imshow(gw4);
% wienerÂoªi