b=imread('buffalo.png');
bf=fftshift(fft2(b));
[r,c]=size(b);
[x,y]=meshgrid(-c/2:c/2-1,-r/2:r/2-1);
bworth=1./(1+(sqrt(2)-1)*((x.^2+y.^2)/15^2).^2);
bw=bf.*bworth;
bwa=abs(ifft2(bw));
blur=im2uint8(mat2gray(bwa));
figure(1),imshow(blur);

blf=fftshift(fft2(blur));
D=60;
bworth2=1./(1+(sqrt(2)-1)*((x.^2+y.^2)/D^2).^10);
blfb=blf./bworth.*bworth2;
ba=abs(ifft2(blfb));
figure(3),imshow(mat2gray(ba));

f1=fspecial('average',[7,7]);
bf1=imfilter(b,f1);
figure(2),imshow(bf1);
