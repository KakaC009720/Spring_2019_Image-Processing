g=rgb2gray(imread('gull.png'));

[rs,cs]=size(g);
[x,y]=meshgrid(1:rs,1:cs);
p=1+sin(x/6+y/6);
% ¥¿©¶«ü¥O
gp=(2*im2double(g)+p/2)/3;

gf=fftshift(fft2(gp));
figure(1),imshow(mat2gray(log(1+abs(gf))));
gf2=im2uint8(mat2gray(abs(gf)));
gf2(201,201)=0;
[i,j]=find(gf2==max(gf2(:)));
i
j
(i-201).^2+(j-201).^2

gf2=gf;
gf2(i,:)=0;
gf2(:,j)=0;

figure(2),imshow(mat2gray(log(1+abs(gf2))))
figure(3),imshow(abs(ifft2(gf2)))