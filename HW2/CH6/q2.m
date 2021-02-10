x=[8  6 13  9
   1 13  1 15
   5  4  7  7 
   5 10  3  7];
xn1=imresize(x,7/4,'nearest');
xn2=imresize(x,8/4,'nearest');
xn3=imresize(x,10/4,'nearest');

xb1=imresize(x,7/4,'bilinear');
xb2=imresize(x,8/4,'bilinear');
xb3=imresize(x,10/4,'bilinear');