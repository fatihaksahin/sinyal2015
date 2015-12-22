function [c]=frek(nota,m)
%fonksiyon tanimladik ve girlicek argumanlari belirledik.Üstte girdigimiz
%notaya gore altta d degiskeni deger aliyor ve formul hesaplaniyor
a=440;%La degerini referans aldýk
if nargin<2
    m=4;
end
    
switch nota  %notaya karsilik gelen degeri aliyor.Örnegin do 1.sirada 1 degerini aliyor.C# 2.sirada 2 degerini aliyor
    
    case {'Do'}
        d=1;
        case {'Dod'}
        d=2;
        case {'Re'}
        d=3;
        case {'Mib'}
        d=4;
        case {'Mi'}
        d=5;
        case {'Fa'}
        d=6;
        case {'Fad'}
        d=7;
        case {'Sol'}
        d=8;
        case {'Sold'}
        d=9;
        case {'La'}
        d=10;
        case {'Sib'}
         d=11;
        case {'Si'}
        d=12;
        case{'sus'}
        a=0;
        d=0;
        
      otherwise %hiçbir þey girilmesse default degeri
        d=10;
    
    
end
c=(a)*2^((m-4)+(d-10)/12);


%la notasýnýn frekansýný temel aldým
%http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
%formulu burdan buldum sayfa 30