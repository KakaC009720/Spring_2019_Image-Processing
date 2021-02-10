c=imread('circles2.png');

a12=ones(12);
ca12=imerode(c,a12);
ca12=mat2gray(ca12);
cc=ca12(75:85,135:145);
cc;
figure(1),imshow(cc);
b=[1 0 1
    0 1 0
    1 0 1];
cd=imdilate(cc,b);
cd_ext=cd&~cc;
figure(2),imshow(cd_ext);
% 求出外部邊界

b1=[0 0 0 0 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 1
    1 1 1 1 1 1 1 1 1
    1 1 1 1 1 1 1 1 1
    0 1 1 1 1 1 1 1 0
    0 0 1 1 1 1 1 0 0 
    0 0 0 1 1 1 0 0 0];
b2=cd_ext;
ccb1=imerode(cc,b1);
ccb2=imerode(~cc,b2);
hit_or_miss=ccb1&ccb2;
[x,y]=find(hit_or_miss==1)

sq=ones(3);
ccb=cc&~imerode(cc,sq);
figure(3),imshow(ccb);
ccf=imfill(ccb,[6,6],sq);
figure(4),imshow(ccf);

