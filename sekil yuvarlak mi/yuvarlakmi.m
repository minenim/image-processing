I = imread('https://raw.github.com/tugdev/pro-lang/master/matlab/image-processing/sekilleri_goster/coins19.png');
bw = im2bw(I);

bw = imfill(bw, 'holes');

[L,T] = bwlabel(bw);

R = regionprops(L, 'Eccentricity');
a = [R.Eccentricity]
a

f = a < 0.4

kactanesi = find(f == 0); % f matrisi icindeki degeri 0 olan yerleri buluyor

for i = 1:length(kactanesi)
    kactanesi(i) % degeri 0 olan yerlerin degerine bakiyor
   
    bul = find(L == kactanesi(i));

    L(bul) = 0; % bu yerlerin g�r�t�deki piksel degerleri 0 oluyor.
end

imshow(L)