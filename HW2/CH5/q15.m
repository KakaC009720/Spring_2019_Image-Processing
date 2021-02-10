c=imread('cameraman.png');
cmax=nlfilter(c,[3,3],'max(x(:))');
figure,imshow(cmax);

cmin=nlfilter(c,[3,3],'min(x(:))');
figure,imshow(cmin);