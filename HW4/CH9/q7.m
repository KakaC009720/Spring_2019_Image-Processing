t=imread('circles.png');
subplot(1,2,1),imshow(t);
title('���');
[r,c]=size(t);
[x,y]=meshgrid(1:256,1:256);
t2=double(t).*(x+y)/512;
t3=im2uint8(t2);


thresh=@(x)imbinarize(x.data);
subplot(1,2,2),imshow(blockproc(t3,[r/6,c/6],thresh));
title('����6*6');
% r�Bc�M�w���X��