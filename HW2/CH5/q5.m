x=imread('buffalo.png');
xa=imfilter(x,a,'full');
figure(1),imshow(xa);
xb=imfilter(x,b,'full');
figure(2),imshow(xb);
xc=imfilter(x,c,'full');
figure(3),imshow(xc);
xd=imfilter(x,d,'full');
figure(4),imshow(xd);
xe=imfilter(x,e,'full');
figure(5),imshow(xe);
xf=imfilter(x,f,'full');
figure(6),imshow(xf);
xg=imfilter(x,g,'full');
figure(7),imshow(xg);
xh=imfilter(x,h,'full');
figure(8),imshow(xh);
figure(9),imshow(x);