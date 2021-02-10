c=imread('cameraman.png');
c=double(c);
cf=fftshift(fft2(c));
figure(1),imshow(mat2gray(log(1+abs(cf))));

f1=fspecial('average',5);
cf1=imfilter(c,f1);
cf11=fftshift(fft2(cf1));
figure(2),imshow(mat2gray(log(1+abs(cf11))));

f2=fspecial('average',9);
cf2=imfilter(c,f2);
cf22=fftshift(fft2(cf2));
figure(3),imshow(mat2gray(log(1+abs(cf22))));

f3=fspecial('average',25);
cf3=imfilter(c,f3);
cf33=fftshift(fft2(cf3));
figure(4),imshow(mat2gray(log(1+abs(cf33))));