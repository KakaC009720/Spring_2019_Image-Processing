m=imread('morph_text.png');
b1=[0 1 1 1 0 
    1 1 1 1 1 
    1 1 1 1 1
    1 1 1 1 1
    0 1 1 1 0];
b2=ones(7);
b2(2:6,2:6)=~b1;

mb1=imerode(m,b1);
mb2=imerode(~m,b2);
hit_or_miss=mb1&mb2;
[x,y]=find(hit_or_miss==1)
% 找出中心座標

sq=ones(3);
mb=m&~imerode(m,sq);
subplot(1,2,1),imshow(mb);
title('原圖');
mf=imfill(mb,[24,97],sq);
subplot(1,2,2),imshow(mf);
title('i上面那點');
