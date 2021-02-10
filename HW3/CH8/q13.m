g=rgb2gray(imread('gull.png'));
g=imresize(g,[256,256]);
[rs,cs]=size(g);
[x,y]=meshgrid(1:rs,1:cs);
p= sin(x/3+y/5)+1;
gp=(2*im2double(g)+p/2)/3;

gf=fftshift(fft2(gp));
figure(1),imshow(mat2gray(log(1+abs(gf))));
gf2=im2uint8(mat2gray(abs(gf)));
gf2(201,201)=0;
[i,j]=find(gf2==max(gf2(:)));
(i-201).^2+(j-201).^2


z=sqrt((x-201).^2+(y-201).^2);
d=sqrt(610);
k=1;
br=(z < floor(d-k) | z > ceil(d+k));
br=imresize(br,[256,256]);

figure(2),imshow(mat2gray(log(1+abs(br))));
gfr=gf.*br;
figure(3),imshow(mat2gray(log(1+abs(gfr))))
figure(4),imshow(abs(ifft2(gfr)))
