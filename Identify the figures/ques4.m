function ObjNum = ques4(I)
I = rgb2gray(I);
I = im2bw(I,0.01);

ii=imfill(I,'holes');

holes=ii-I;

[L, ~] = bwlabel(holes);

stats = regionprops('table',L,'Centroid', 'MajorAxisLength','MinorAxisLength');
diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
radii = diameters / 2;
r = mean(radii);

se = strel('disk',double(uint8(2*r)));

ss = imdilate(holes,se);

[~, ObjNum] = bwlabel(ss);
end