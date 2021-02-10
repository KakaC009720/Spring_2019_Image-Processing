e=imread('aaaa.png');
e=rgb2gray(e);
e=imresize(e,[256,256]);
e=double(e);
ef=fftshift(fft2(e));
efl=ef.*e;
efli=ifft2(efl);
figure(1),imshow(mat2gray(abs(efli)));
% 低通濾波器

[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);
c = z>5;
% 產生圓
efh=ef.*c;
efhi=ifft2(efh);
figure(2),imshow(mat2gray(abs(efhi)));
% 高通濾波器

bl=1./(1+((x.^2+y.^2)/15.^2).^2);
efbl=ef.*bl;
figure(3),imshow(mat2gray(log(1+abs(efbl))))
figure(4),imshow(mat2gray(abs(ifft2(efbl))))
% Butterworth低通濾波

g1=mat2gray(fspecial('gaussian',256,10));
eg1=ef.*g1;
figure(5),imshow(mat2gray(log(1+abs(eg1))))
figure(6),imshow(mat2gray(abs(ifft2(eg1))))
% 高斯低通濾波器