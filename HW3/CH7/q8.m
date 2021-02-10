c=imread('cameraman.png');
c=double(c);
cf=fftshift(fft2(c));
figure(1),imshow(mat2gray(log(1+abs(cf))));

cff=(fft2(cf));
figure(2),imshow(mat2gray(log(1+abs(cff))));