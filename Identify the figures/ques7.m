function [ fin ] = ques7( I )
bw=rgb2gray(I);
[a, b]=bwlabel(imfill(bw,'holes'));
blobs = regionprops(a,'Perimeter','Area');
circularities = [blobs.Perimeter].*[blobs.Perimeter] ./ (4 * pi * [blobs.Area]);
fin=zeros(size(bw));
for i=1:b
    x=uint8(a==i);
    d=zeros(size(bw));
    d(:,:) = uint8(x).*bw(:,:);
    if circularities(i)<=1.11
        if imfill(uint8(d),'holes')==uint8(d)
            fin=fin+d;
        end
    end
end
fin=uint8(fin);
end


