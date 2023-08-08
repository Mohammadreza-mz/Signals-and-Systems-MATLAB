function [] = showAns(img, filters, stride, padding)
    sz = size(filters, 3);
    feature_map = conv2D(img, filters, stride, padding);
    figure;
    subplot(2, sz+1, 1);
    imshow(img);
    for i = 1:sz
        subplot(2, sz+1, i+1);
        imshow(feature_map(:,:,i));
    end

    img2= rgb2gray(img);
    feature_map = conv2D(img2, filters, stride, padding);
    subplot(2, sz+1, sz+2);
    imshow(img2);
    for i = 1:sz
        subplot(2, sz+1, sz+i+2);
        imshow(feature_map(:,:,i));
    end
end