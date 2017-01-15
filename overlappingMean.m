clc;
clear;
resim = imread('renkli.jpg');
gri = rgb2gray(resim);
%n komsuluk degeri
n = 20;
[satir,sutun] = size(gri); %goruntu boyutu
resim_zeros = zeros(satir,sutun);%ayný ölçülerde sýfýr matrisi oluþturalým
for i = 1:satir
    for j = 1:sutun
        %komsuluklarýn ,goruntunun boyutunu aþmadýðýndan emin olalým
        i_endusuk = max([1,i-n]);
        i_enyuksek = min([satir,i+n]);
        j_endusuk = max([1,j-n]);
        j_enyuksek = min([sutun,j+n]);
        
        %geçerli olan tüm n*nlik piksel deðerlerini topluyoruz
        resim_zeros(i,j) = sum(sum(resim(i_endusuk:i_enyuksek,j_endusuk:j_enyuksek)));
        %ve bölüyoruz
        resim_zeros(i,j) = resim_zeros(i,j)/((i_endusuk - i_enyuksek +1)*(j_endusuk - j_enyuksek + 1));
    end % j for bitis
end %i for bitis
% son olarak yuvarlama yapalým
resim_zeros = uint8(floor(resim_zeros + 0.5));
imshow(resim_zeros);
    
