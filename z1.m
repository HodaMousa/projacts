[file,path]=uigetfile('*.*');
t1=input('number of target:');
im=imread([path file]);
im_clip=im2bw(im);
% imshow(im_clip)
a=~im_clip;
% imshow(a)
[r,c]=find(a); 
lmaxc=max(c);lminc=min(c);
lmaxr=max(r);lminr=min(r);
im_clip=a(lminr:lmaxr,lminc:lmaxc);
% subplot(211)
% imshow(im)
% title('original image');
% subplot(212)
% imshow(im_clip)
% title('clipping image');
e=size(im_clip,2)/size(im_clip,1);
im_clip=imresize(im_clip,[100 20]);
x1=floor(size(im_clip,2)/2);
w=size(im_clip,2)-floor(size(im_clip,2)/2);
y1=floor(size(im_clip,1)/2);
h=size(im_clip,1)-floor(size(im_clip,1)/2);
im_crop1=imcrop(im_clip,[1 1 w-1 h-1]);
im_crop2=imcrop(im_clip,[x1 1 w-1 y1-1]);
im_crop4=imcrop(im_clip,[x1 y1 w-1 h-1]);
im_crop3=imcrop(im_clip,[1 y1 w-1 h-1]);
a=sum(sum(im_crop1));
b=sum(sum(im_crop2));
c=sum(sum(im_crop3));
d=sum(sum(im_crop4));
aa=zeros(9,1);

try
    load('datd')
    p=[p  [a b c d e]']
    aa(t1)=1
    t=[t aa]
catch
    p=[  [a b c d e]']
    aa(t1)=1
    t=[  aa]

end
save('data','t','p')
p=[a; b; c; d ;e]







