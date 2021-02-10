c1=imread('circles.png');
c2=imread('circles2.png');
m=imread('morph_text.png');
n=imread('nicework.png');

sq=[1 1 1;1 1 1;1 1 1]; %�諬
cr=[0 1 0;1 1 1;0 1 0]; %�Q�r

sqrec1=imerode(c1,sq);
sqrec2=imerode(c2,sq);
sqrem=imerode(m,sq);
sqren=imerode(n,sq);
crrec1=imerode(c1,cr);
crrec2=imerode(c2,cr);
crrem=imerode(m,cr);
crren=imerode(n,cr);
%�I�k

sqtdc1=imdilate(c1,sq);
sqtdc2=imdilate(c2,sq);
sqtdm=imdilate(m,sq);
sqtdn=imdilate(n,sq);
crtdc1=imdilate(c1,cr);
crtdc2=imdilate(c2,cr);
crtdm=imdilate(m,cr);
crtdn=imdilate(n,cr);
%����

subplot(4,3,1),imshow(c1);
title('circles');
subplot(4,3,2),imshow(sqrec1);
title('�I�k');
subplot(4,3,3),imshow(sqtdc1);
title('����');

subplot(4,3,4),imshow(c2);
title('circles2');
subplot(4,3,5),imshow(sqrec2);
title('�I�k');
subplot(4,3,6),imshow(sqtdc2);
title('����');

subplot(4,3,7),imshow(m);
title('morph_text');
subplot(4,3,8),imshow(sqrem);
title('�I�k');
subplot(4,3,9),imshow(sqtdm);
title('����');

subplot(4,3,10),imshow(n);
title('nicework');
subplot(4,3,11),imshow(sqren);
title('�I�k');
subplot(4,3,12),imshow(sqtdn);
title('����');

