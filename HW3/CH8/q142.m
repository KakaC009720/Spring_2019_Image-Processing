b=imread('buffalo.png');
bf=fftshift(fft2(b));
[r,c]=size(b);
[x,y]=meshgrid(-c/2:c/2-1,-r/2:r/2-1);
bworth=1./(1+(sqrt(2)-1)*((x.^2+y.^2)/15^2).^2);
bw=bf.*bworth;
bwa=abs(ifft2(bw));
blur=im2uint8(mat2gray(bwa));
figure(1),imshow(blur);

f1=fspecial('average',[5,5]);
bf1=imfilter(b,f1);
figure(2),imshow(bf1);


d=0.01;
bw=bworth; bw(find(bw<d))=1
fbw=fftshift(fft2(blur))./bw;
fbwa=abs(ifft2(fbw));
figure(3),imshow(mat2gray(fbwa));