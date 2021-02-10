x=uint8(10*magic(5));
a=(1/9)*[1 1 1
         1 1 1
         1 1 1];
 x1=imfilter(x,a,'symmetric');
 x2=imfilter(x,a,'circular');
 x3=imfilter(x,a,'replicate');
 x4=imfilter(x,a,'full');
 