n=im2uint8(imread('nicework.png'));
c=imread('cameraman.png');
n=im2double(n);
c=im2double(c);
m=c.*(n==0);
imshow(m);