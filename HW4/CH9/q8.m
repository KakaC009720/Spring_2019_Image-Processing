im=200*ones(10,10);
im(3:5,3:8)=50;
im(6:8,4:7)=50;
s=im+round(9*randn(10,10));
s2=mat2gray(s);

rx=[1 0 0;0 -1 0;0 0 0];
ry=[0 1 0;-1 0 0;0 0 0];
srx=imfilter(s,rx);
sry=imfilter(s,ry);
edge_r=uint8(sqrt(double(srx).^2+double(sry).^2));
edge_r;

px=[-1 0 1;-1 0 1;-1 0 1]; 
py=px';
spx=imfilter(s,px);
spy=imfilter(s,py);
edge_p=uint8(sqrt(double(spx).^2+double(spy).^2));
edge_p;

sx=[-1 0 1;-2 0 2;-1 0 1];
sy=[-1 -2 1;0 0 0;1 2 1];
ssx=imfilter(s,sx);
ssy=imfilter(s,sy);
edge_s=uint8(sqrt(double(ssx).^2+double(ssy).^2));
edge_s;

lap=fspecial('laplacian',0);
s_lap=imfilter(s,lap);
s_lap;

lap=fspecial('laplacian',0);
sz=edge(s,'zerocross',[],lap);
sz;

subplot(231),imshow(s2);
title('原矩陣');
subplot(232),imshow(edge_r);
title('Roberts');
subplot(233),imshow(edge_p);
title('Prewitt');
subplot(234),imshow(edge_s);
title('Sobel');
subplot(235),imshow(s_lap);
title('Laplacian');
subplot(236),imshow(sz);
title('Laplacian後零點交叉');

