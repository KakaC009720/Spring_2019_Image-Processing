cr=[0 1 0
    1 1 1
    0 1 0];
% �Q�r�ε��c����
a=[0 0 0 0 0 0 0 0 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 0
   0 0 0 0 0 0 0 0 0];

b=[0 0 0 0 0 0 0 0 0 0 0
   0 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 0
   0 0 0 0 0 0 0 0 0 0 0];

c=[0 0 0 0 0 0 0 0 0 0 
   0 1 1 1 1 1 0 0 0 0
   0 1 1 1 1 1 0 0 0 0
   0 1 1 1 1 1 0 0 0 0
   0 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 0
   0 0 0 0 0 0 0 0 0 0];

d=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0
   0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

e=[0 0 0 0 0 0 0 0 0 0 0 0 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 0
   0 1 1 1 1 1 1 1 1 1 1 1 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 0 0 0 1 1 1 1 1 0 0 0 0
   0 0 0 0 0 0 0 0 0 0 0 0 0];

ak2=imskel(a,cr);
bk2=imskel(b,cr);
ck2=imskel(c,cr);
dk2=imskel(d,cr);
ek2=imskel(e,cr);
subplot(1,5,1),imshow(ak2);
title('a');
subplot(1,5,2),imshow(bk2);
title('b');
subplot(1,5,3),imshow(ck2);
title('c');
subplot(1,5,4),imshow(dk2);
title('d');
subplot(1,5,5),imshow(ek2);
title('e');