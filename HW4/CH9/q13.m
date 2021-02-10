ir=imread('iris.png');
i=rgb2gray(ir);
c1=imnoise(i,'salt & pepper');
c2=imnoise(i,'gaussian');

% subplot(2,4,1),imshow(c1);
% title('salt & pepper');
% 
% edge_r=edge(c1,'roberts');
% subplot(2,4,2),imshow(edge_r);
% title('Roberts');
% 
% edge_p=edge(c1,'prewitt');
% subplot(2,4,3),imshow(edge_p);
% title('Prewitt');
% 
% edge_s=edge(c1,'sobel');
% subplot(2,4,4),imshow(edge_s);
% title('Sobel');
% 
% lap=fspecial('laplacian',0);
% c_lap=imfilter(c1,lap);
% subplot(2,4,5),imshow(c_lap);
% title('Laplacian');
% 
% lap=fspecial('laplacian',0);
% cz=edge(c1,'zerocross',[],lap);
% subplot(2,4,6),imshow(cz);
% title('Laplacian後零點交叉');
% 
% log=fspecial('log',13,2);
% cmh=edge(c1,'zerocross',[],log);
% subplot(2,4,7),imshow(cmh);
% title('Marr-Hildreth');
% 
% cc=edge(c1,'canny');
% subplot(2,4,8),imshow(cc);
% title('Canny');
% c1

subplot(2,4,1),imshow(c2);
title('gaussian');

edge_r=edge(c2,'roberts');
subplot(2,4,2),imshow(edge_r);
title('Roberts');

edge_p=edge(c2,'prewitt');
subplot(2,4,3),imshow(edge_p);
title('Prewitt');

edge_s=edge(c2,'sobel');
subplot(2,4,4),imshow(edge_s);
title('Sobel');

lap=fspecial('laplacian',0);
c_lap=imfilter(c2,lap);
subplot(2,4,5),imshow(c_lap);
title('Laplacian');

lap=fspecial('laplacian',0);
cz=edge(c2,'zerocross',[],lap);
subplot(2,4,6),imshow(cz);
title('Laplacian後零點交叉');

log=fspecial('log',13,2);
cmh=edge(c2,'zerocross',[],log);
subplot(2,4,7),imshow(cmh);
title('Marr-Hildreth');

cc=edge(c2,'canny');
subplot(2,4,8),imshow(cc);
title('Canny');
% c2