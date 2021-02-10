c=imread('cameraman.png');
subplot(2,4,1),imshow(c);
title('原圖');

edge_r=edge(c,'roberts');
subplot(2,4,2),imshow(edge_r);
title('Roberts');

edge_p=edge(c,'prewitt');
subplot(2,4,3),imshow(edge_p);
title('Prewitt');

edge_s=edge(c,'sobel');
subplot(2,4,4),imshow(edge_s);
title('Sobel');

lap=fspecial('laplacian',0);
c_lap=imfilter(c,lap);
subplot(2,4,5),imshow(c_lap);
title('Laplacian');

lap=fspecial('laplacian',0);
cz=edge(c,'zerocross',[],lap);
subplot(2,4,6),imshow(cz);
title('Laplacian後零點交叉');

log=fspecial('log',13,2);
cmh=edge(c,'zerocross',[],log);
subplot(2,4,7),imshow(cmh);
title('Marr-Hildreth');

cc=edge(c,'canny');
subplot(2,4,8),imshow(cc);
title('Canny');