c=imread('cameraman.png');
f=fspecial('laplacian');
cf=imfilter(c,f,'symmetric');
f1=fspecial('log');
cf1=imfilter(c,f1,'symmetric');

b=imread('buffalo.png');
bf=imfilter(b,f,'symmetric');
bf1=imfilter(b,f1,'symmetric');

figure,imshow(cf);
figure,imshow(cf1);
figure,imshow(bf);
figure,imshow(bf1);