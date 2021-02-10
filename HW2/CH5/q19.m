k=imread('koala.png');
figure,imshow(k);

f1=fspecial('average');
kf1=imfilter(k,f1);
figure,imshow(kf1);

id=[0 0 0
    0 1 0
    0 0 0];
u=3*id-2*f1;
ku=imfilter(kf1,u);
figure,imshow(ku);

