I = imread('https://raw.github.com/tugdev/pro-lang/master/matlab/image-processing/sekilleri_goster/coins19.png');
bw = im2bw(I);

temiz = imfill(bw, 'holes');


[L,T] = bwlabel(temiz);

R = regionprops(L, 'Eccentricity'); % yuvarlakl�k
a = [R.Eccentricity]
a
a(1)
a(2)
a(3)
a(4)
a(5)
% piksel degerleri 2 olan yani bizim resmimizde �cgenin yuvarlakl�k
% derecesi

% yuvarlakl�k derecesi 0'a ne kadar yak�n ise cismimiz o kadar yuvarlart�r

f = a < 0.4 % a matrisinde degeri 0.4'ten kucuk olan elemanlar�n
% indislerini 1, buyuk olanlar� ise 0 yap�yor.
 
kac = find(f == 0); % f matrisi icindeki degeri 0 olan indisleri buluyor.

kac2 = find(f == 1);

for i = 1:length(kac)
    kac(i) % 2 6 8 2 -> ucgen
   
    bul = find(L == kac(i));
 % kac(i) s�ras� ile 2 6 ve 8 degerlerini tutuyor
 % yani piksel degeri 2 olan yerler �cgen piksel degeri 6 olan yerler kare
 % vs.
  % bul de�erleri 2 6 8 d�n�yor
        L(bul) = 0; % piksel degeri 2 olan yerleri 0 yap. Sonra 6 lar� 0 YAP sonra 8 leri s�f�r yap
        
end

figure(3); imshow(L)