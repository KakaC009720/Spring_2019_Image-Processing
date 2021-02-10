g=rgb2gray(imread('gull.png'));
figure(1),imshow(g);
gsp=imnoise(g,'salt & pepper',0.2);
figure(2),imshow(gsp);

a3=fspecial('average',3);
g3=imfilter(gsp,a3);
figure(3),imshow(g3);
% ¥­§¡Âoªi

gm3=medfilt2(gsp);
figure(4),imshow(gm3);
% ¤¤¶¡­ÈÂoªi

co=ordfilt2(gsp,3,[0 1 0;1 1 1;0 1 0]);
figure(5),imshow(co);
% ±Æ§ÇÂoªi(°²¤¤¶¡­ÈÂoªi)

gsp=im2double(gsp);
av=[1 1 1;1 0 1;1 1 1]/8;
gspa=imfilter(gsp,av);
D=0.5;
r=abs(gsp-gspa)>D;
figure(6),imshow(r.*gspa+(1-r).*gsp);
% Â÷¸s­ÈÂoªi
