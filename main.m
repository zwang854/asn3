I = imread('p1.jpg');
I = rgb2gray(I);

figure,
subplot(3,2,1), imshow(I), title('Original Image'),
subplot(3,2,2), imhist(I),title('Original Histogram');

I_eq = imgeq(I);
subplot(3,2,3), imshow(I_eq), title('Equalized Image')
subplot(3,2,4), imhist(I_eq), title('Equalized Histogram')

I2=histeq(I);
subplot(3,2,5), imshow(I_eq), title('Equalized Image')
subplot(3,2,6), imhist(I_eq), title('Equalized Histogram')

