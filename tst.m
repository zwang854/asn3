I = imread('p1.jpg');
I = rgb2gray(I);

%initialize the output
y=I;
%count is the number of pixel values of x
[count,~] = imhist(I);
total = sum(count);
%P(r) list
pcount = count/total;
%create an empty list to hold the equalized pixel value
e_val = zeros(256,1);
%calculate the equalized pixel values
for i = 1:256
    e_val(i)=255 * sum(pcount(1:i));
end
e_val=uint8(e_val);
%change the pixel value of the output img
for i = 0:255
    t = find(I == i);
    for j = 1:size(t,1)
        y(t(j)) = e_val(i+1);
    end
end

imhist(y)
