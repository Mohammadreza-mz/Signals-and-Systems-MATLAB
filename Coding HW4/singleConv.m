function [output] = singleConv(img, filter, stride, ho, wo)
	h=size(img,1);
	w=size(img,2);
	f = size(filter, 1);
	output = zeros(ho, wo);

	out_row = 1;
	for row = 1:stride: h-f+1
		out_col=1;
	    for col = 1:stride: w-f+1
	        local = img(row:row+f-1, col:col+f-1);
	        conv = double(local) .* filter;
	        output(out_row, out_col) = sum(conv, 'all');

	        out_col = out_col + 1;
	    end
	    out_row = out_row + 1;
	end
end