c=imread('cameraman.png');
head=c(33:96,90:153);

hz=uint8(zeros(size(head)*4));
hz(1:4:end,1:4:end)=head;
subplot(2,2,1),imshow(hz);

head4n=imresize(head,4,'nearest');
subplot(2,2,2),imshow(head4n);

head4b=imresize(head,4,'bilinear');
subplot(2,2,3),imshow(head4b);

head4c=imresize(head,4,'bicubic');
subplot(2,2,4),imshow(head4c);