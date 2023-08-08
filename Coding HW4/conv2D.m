function [feature_map] = conv2D(img, filters, stride, padding)
	h=size(img,1);
	w=size(img,2);
	f = size(filters, 1);
	if padding == "same"
		ho= floor((h-1)/stride)+1; % h-f+2p= h-f+2*((f-1)/2) = h-f+(f-1)= h-1
		wo= floor((w-1)/stride)+1;	% w-f+2p= w-f+2*((f-1)/2) = w-f+(f-1)= w-1
	elseif padding == "valid"
		ho= floor((h-f)/stride)+1;
		wo= floor((w-f)/stride)+1;
	end
    

    p= (f-1)/2;
    if padding == "valid"
    	%p=0;
    end
    sprintf("h: %i w: %i p: %i ho: %i wo: %i", h, w, p, ho, wo)





	no_filter = size(filters, 3);
	c= size(img, 3);
	output = zeros(ho, wo, no_filter);
	for i= 1:no_filter
		for j= 1:c
			fimg = img(:,:,j);
			if padding == "same"
				fimg = addPadding(img(:,:,j),f,ho,wo);
			end
			output(:,:,i) = output(:,:,i) + singleConv(fimg, filters(:,:,i), stride, ho, wo);
		end
	end

	feature_map = uint8(output);
end