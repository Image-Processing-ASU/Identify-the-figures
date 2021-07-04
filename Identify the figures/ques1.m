function ratio = ques1(I)

%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
bw=rgb2gray(I);
bw = imbinarize(bw);
[rows columns] = size(bw);
ctr = sum(bw(:) == 1);
ratio=ctr/(rows*columns);



end