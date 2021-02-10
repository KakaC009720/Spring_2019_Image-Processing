e=imread('engineer.png');
e=double(e);
ef=fftshift(fft2(e));
[x,y]=meshgrid(-128:127,-128:127);
bl=1./(1+((x.^2+y.^2)/15.^2).^2);
efbl=ef.*bl;
figure(3),fftshow(efbl,'log');