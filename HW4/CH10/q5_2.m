c=imread('circles2.png');

a12=ones(12);
ca12=imerode(c,a12);
ca12=mat2gray(ca12);
cc=ca12(75:85,135:145);

b1=[0 0 0 0 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    1 1 1 1 1 1 1 1 1
    1 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 0
    0 0 1 1 1 1 1 0 0 
    0 0 0 1 1 1 0 0 0];
b2=ones(11);
b2(2:10,2:10)=~b1;

cb1=imerode(ca12,b1);
cb2=imerode(~ca12,b2);
hit_or_miss=cb1&cb2;
[x,y]=find(hit_or_miss==1)
% 得出座標
cxy=hit_or_miss(60:124,105:170);

subplot(3,3,1),imshow(cc);
title('其中一個部分');
subplot(3,3,2),imshow(b1);
title('與所求形狀相同');
subplot(3,3,3),imshow(b2);
title('所求形狀外部邊界影像');
subplot(3,3,4),imshow(cb1);
title('透過b1侵蝕');
subplot(3,3,5),imshow(cb2);
title('透過b2侵蝕');
subplot(3,3,6),imshow(hit_or_miss);
title('結果');
subplot(3,3,8),imshow(cxy);
title('結果放大檢視');

% subplot(1,2,1),imshow(ca12);
% title('原圖');
% subplot(1,2,2),imshow(cc);
% title('特定部分');