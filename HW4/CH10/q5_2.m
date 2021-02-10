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
% �o�X�y��
cxy=hit_or_miss(60:124,105:170);

subplot(3,3,1),imshow(cc);
title('�䤤�@�ӳ���');
subplot(3,3,2),imshow(b1);
title('�P�ҨD�Ϊ��ۦP');
subplot(3,3,3),imshow(b2);
title('�ҨD�Ϊ��~����ɼv��');
subplot(3,3,4),imshow(cb1);
title('�z�Lb1�I�k');
subplot(3,3,5),imshow(cb2);
title('�z�Lb2�I�k');
subplot(3,3,6),imshow(hit_or_miss);
title('���G');
subplot(3,3,8),imshow(cxy);
title('���G��j�˵�');

% subplot(1,2,1),imshow(ca12);
% title('���');
% subplot(1,2,2),imshow(cc);
% title('�S�w����');