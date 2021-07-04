function holesNum = ques3(I)
I = rgb2gray(I);
I = im2bw(I,0.01);

ii=imfill(I,'holes');
holes=ii-I;
[~, holesNum] = bwlabel(holes);
end