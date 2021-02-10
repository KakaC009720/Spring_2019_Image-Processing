c=imread('chicken.png');
y=rgb2gray(c);

a1=fspecial('gaussian',[3,3],0.5);
a2=fspecial('gaussian',[3,3],1);
a3=fspecial('gaussian',[3,3],2);
b1=fspecial('gaussian',[7,7],1);
b2=fspecial('gaussian',[7,7],3);
b3=fspecial('gaussian',[7,7],6);
c1=fspecial('gaussian',[11,11],1);
c2=fspecial('gaussian',[11,11],4);
c3=fspecial('gaussian',[11,11],8);
d1=fspecial('gaussian',[21,21],1);
d2=fspecial('gaussian',[21,21],5);
d3=fspecial('gaussian',[21,21],10);

subplot(3,4,1),imshow(imfilter(y,a1,'symmetric'));
subplot(3,4,2),imshow(imfilter(y,a2,'symmetric'));
subplot(3,4,3),imshow(imfilter(y,a3,'symmetric'));
subplot(3,4,4),imshow(imfilter(y,b1,'symmetric'));
subplot(3,4,5),imshow(imfilter(y,b2,'symmetric'));
subplot(3,4,6),imshow(imfilter(y,b3,'symmetric'));
subplot(3,4,7),imshow(imfilter(y,c1,'symmetric'));
subplot(3,4,8),imshow(imfilter(y,c2,'symmetric'));
subplot(3,4,9),imshow(imfilter(y,c3,'symmetric'));
subplot(3,4,10),imshow(imfilter(y,d1,'symmetric'));
subplot(3,4,11),imshow(imfilter(y,d2,'symmetric'));
subplot(3,4,12),imshow(imfilter(y,d3,'symmetric'));