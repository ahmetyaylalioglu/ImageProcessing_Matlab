gray_im = imread('fotografci.png');
fun = @(block_struct) uint8( mean2(block_struct.data(:))  * ones(block_struct.blockSize) );
block_avg_3 = blockproc(gray_im,[3 3],fun);
block_avg_5 = blockproc(gray_im,[5 5],fun);
block_avg_7 = blockproc(gray_im,[7 7],fun);
figure,imshow(gray_im),figure,imshow(block_avg_3),figure,imshow(block_avg_5),figure,imshow(block_avg_7);