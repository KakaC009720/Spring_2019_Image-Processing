a=[12 15 7 3
   10 50 5 3
    8 11 4 1
    7  4 3 0];
f1=fspecial('average',3);
am=imfilter(a,f1);

b=[20 5  6   4
    6 4  20  2
    3 3  5   1
    5 20 2   20];
bm=imfilter(b,f1);

c=[14  0 9  7
   23 10 14 1
    7 11  8 9
   13 18 10 7];
cm=imfilter(c,f1);

am
bm
cm