I = imread('fotografci.png');
for i = 1:8
    seviye = 2 ^ i ;
    img = floor(I/seviye) * seviye;
    imshow(img);
end

