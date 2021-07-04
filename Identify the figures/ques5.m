function Index = ques5(I)
bw=rgb2gray(I);
[L num] = bwlabel(bw);
Index=0;

f = regionprops(L,...
	'Perimeter', 'Area', 'FilledArea');
perimeters = [f.Perimeter];
filledAreas = [f.FilledArea];
circularities = perimeters .^2 ./ (4 * pi * filledAreas);
for i=1:num
    if circularities(i) < 1.5 && circularities(i) > 1
        Index=Index+1;
    end  
end
end