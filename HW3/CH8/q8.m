g=rgb2gray(imread('gull.png'));
gsp=imnoise(g,'salt & pepper',0.2);

gm5=medfilt2(gsp,[5,5]);
figure(1),imshow(gm5);

gm3=medfilt2(gsp);
gm33=medfilt2(gm3);
figure(2),imshow(gm33);