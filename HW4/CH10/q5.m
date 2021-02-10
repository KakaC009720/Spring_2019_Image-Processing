c=imread('circles2.png');
subplot(3,5,3),imshow(c);
title('­ì¹Ï');

a3=ones(3);
ca3=imerode(c,a3);
subplot(3,5,6),imshow(ca3);
title('3*3');

a4=ones(4);
ca4=imerode(c,a4);
subplot(3,5,7),imshow(ca4);
title('4*4');

a5=ones(5);
ca5=imerode(c,a5);
subplot(3,5,8),imshow(ca5);
title('5*5');

a6=ones(6);
ca6=imerode(c,a6);
subplot(3,5,9),imshow(ca6);
title('6*6');

a7=ones(7);
ca7=imerode(c,a7);
subplot(3,5,10),imshow(ca7);
title('7*7');

a8=ones(8);
ca8=imerode(c,a8);
subplot(3,5,11),imshow(ca8);
title('8*8');

a9=ones(9);
ca9=imerode(c,a9);
subplot(3,5,12),imshow(ca9);
title('9*9');

a10=ones(10);
ca10=imerode(c,a10);
subplot(3,5,13),imshow(ca10);
title('10*10');

a11=ones(11);
ca11=imerode(c,a11);
subplot(3,5,14),imshow(ca11);
title('11*11');

a12=ones(12);
ca12=imerode(c,a12);
subplot(3,5,15),imshow(ca12);
title('12*12');
