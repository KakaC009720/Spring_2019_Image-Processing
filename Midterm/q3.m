c=imread('chicken.png');
figure,imshow(c);
y=rgb2gray(c);
hz=uint8(zeros(size(y)*));
hz(1:16:end,1:16:end)=y;

figure,imshow(hz);
cc=imresize(y,4,'bicubic');
figure,imshow(cc);