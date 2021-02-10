c=imread('chicken.png');
sh=histeq(c);
figure,imhist(c);
figure,imhist(sh);
