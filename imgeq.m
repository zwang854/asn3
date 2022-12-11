%this function accepts a uint8,gray image matrix and return a equalized img
function y = imgeq(I)
    %initialize the output
    y=I;
    %count is the number of pixel values of x
    [count,~] = imhist(I);
    total = sum(count);
    %P(r) list
    pcount = count/total;
    %create an empty list to hold the equalized pixel value
    e = zeros(256,1);
    %calculate the equalized pixel values
    for i = 1:256
        e(i)=255 * sum(pcount(1:i));
    end
    %change the pixel value of the output img
    for i = 0:255
        t = find(I == i);
        for j = 1:size(t,1)
            y(t(j)) = e(i+1);
        end
    end
end