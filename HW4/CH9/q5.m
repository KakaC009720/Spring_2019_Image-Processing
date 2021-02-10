n=im2uint8(imread('nicework.png'));
c=imread('cameraman.png');
m=imlincomb(0.5,c,1,n);
imshow(m);