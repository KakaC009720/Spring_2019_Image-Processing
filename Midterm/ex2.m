c=imread('cameraman.png');
f1=fspecial('average');
f2=fspecial('average',[11,11]);
f3=fspecial('average',[25,25]);
cf1=imfilter(c,f1);
cf2=imfilter(c,f2);
cf3=imfilter(c,f3);
figure
subplot(2,2,1),imshow(c);
subplot(2,2,2),imshow(cf1);
subplot(2,2,3),imshow(cf2);
subplot(2,2,4),imshow(cf3);
