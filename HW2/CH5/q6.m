b=imread('buffalo.png');
f1=fspecial('average',3);
bf1=imfilter(b,f1);
f2=fspecial('average',9);
bf2=imfilter(b,f2);
f3=fspecial('average',15);
bf3=imfilter(b,f3);
f4=fspecial('average',25);
bf4=imfilter(b,f4);
figure(1),imshow(bf1);
figure(2),imshow(bf2);
figure(3),imshow(bf3);
figure(4),imshow(bf4);

