function objs = ques2(I)
Img = rgb2gray(I);
Img = im2bw(Img,0.01);
[L num] = bwlabel(Img);
objs= num;
end