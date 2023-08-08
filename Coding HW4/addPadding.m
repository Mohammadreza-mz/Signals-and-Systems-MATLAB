function [output] = addPadding(img, f, ho, wo)
	output = zeros(ho, wo);
	h=size(img,1);
	w=size(img,2);
	output([(f-1)/2+1:(f-1)/2+h],[(f-1)/2+1:(f-1)/2+w]) = img;
end