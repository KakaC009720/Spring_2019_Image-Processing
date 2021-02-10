[x,y]=meshgrid(1:256,1:256);
z=sqrt((x-128).^2+(y-128).^2);
z2=1-mat2gray(z);
subplot(2,3,1),imshow(z2);
title('z2');
subplot(2,3,2),imshow(z2>0.2);
title('z2>0.2');
subplot(2,3,3),imshow(z2>0.5);
title('z2>0.5');
subplot(2,3,4),imshow(z2>0.8);
title('z2>0.8');
subplot(2,3,5),imshow(z2>1);
title('z2>1');