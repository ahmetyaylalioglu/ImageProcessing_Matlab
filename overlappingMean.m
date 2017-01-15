clc;
clear;
resim = imread('renkli.jpg');
gri = rgb2gray(resim);
%n komsuluk degeri
n = 20;
[satir,sutun] = size(gri); %goruntu boyutu
resim_zeros = zeros(satir,sutun);%ayn� �l��lerde s�f�r matrisi olu�tural�m
for i = 1:satir
    for j = 1:sutun
        %komsuluklar�n ,goruntunun boyutunu a�mad���ndan emin olal�m
        i_endusuk = max([1,i-n]);
        i_enyuksek = min([satir,i+n]);
        j_endusuk = max([1,j-n]);
        j_enyuksek = min([sutun,j+n]);
        
        %ge�erli olan t�m n*nlik piksel de�erlerini topluyoruz
        resim_zeros(i,j) = sum(sum(resim(i_endusuk:i_enyuksek,j_endusuk:j_enyuksek)));
        %ve b�l�yoruz
        resim_zeros(i,j) = resim_zeros(i,j)/((i_endusuk - i_enyuksek +1)*(j_endusuk - j_enyuksek + 1));
    end % j for bitis
end %i for bitis
% son olarak yuvarlama yapal�m
resim_zeros = uint8(floor(resim_zeros + 0.5));
imshow(resim_zeros);
    
