I = imread('https://raw.github.com/tugdev/pro-lang/master/matlab/image-processing/sekilleri_goster/coins19.png');
bw = im2bw(I);

temiz = imfill(bw, 'holes');


[L,T] = bwlabel(temiz);

R = regionprops(L, 'Eccentricity'); % yuvarlaklýk
a = [R.Eccentricity]
a
a(1)
a(2)
a(3)
a(4)
a(5)
% piksel degerleri 2 olan yani bizim resmimizde ücgenin yuvarlaklýk
% derecesi

% yuvarlaklýk derecesi 0'a ne kadar yakýn ise cismimiz o kadar yuvarlartýr

f = a < 0.4 % a matrisinde degeri 0.4'ten kucuk olan elemanlarýn
% indislerini 1, buyuk olanlarý ise 0 yapýyor.
 
kac = find(f == 0); % f matrisi icindeki degeri 0 olan indisleri buluyor.

kac2 = find(f == 1);

for i = 1:length(kac)
    kac(i) % 2 6 8 2 -> ucgen
   
    bul = find(L == kac(i));
 % kac(i) sýrasý ile 2 6 ve 8 degerlerini tutuyor
 % yani piksel degeri 2 olan yerler ücgen piksel degeri 6 olan yerler kare
 % vs.
  % bul deðerleri 2 6 8 dönüyor
        L(bul) = 0; % piksel degeri 2 olan yerleri 0 yap. Sonra 6 larý 0 YAP sonra 8 leri sýfýr yap
        
end

figure(3); imshow(L)