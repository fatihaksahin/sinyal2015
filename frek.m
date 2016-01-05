function [frekans]=frek(nota,oktav,oktavdegeri)%frekans d�nd�rmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalar� diziye aktard�k
n=strcmp(notalar,nota); %dizinin icine aktar�r indeksi 1 artt�r.
m=find(n,1);%n dizisinde 1 de�erinin indeksini d�nd�r�r.

        if (nargin==0) %hi� deger girilmemi�se
                 disp ('veri giri�i yap�n�z');%veri giri�i yap�n�z diye hata verir               
        elseif (nargin==1)%tek de�er girilmi�se
                 if (m==13)%sus olup olmad�g�n� kontrol eder
                    frekans=0;%sus ise frekans s�f�r olur
                else %
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%tek  deger girilmi�se oktav� 4 oktav degerini 0 kabul eder
                end%
                
        elseif (nargin==2) %e�er iki de�er girilmi�se
                 if (m==13)%sus olup olmad�g�n� kontrol eder
                    frekans=0;%sussa frekans  s�f�r
                 else
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %fonksiyona g�re �retir
                 end
        else %iki degerden fazla ise 
                 if (m==13)%sus olup olmad�g�n� kontrol eder
                     frekans=0;%sussa frekans s�f�r
                 else
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %g�nderilen nota oktav ve oktav de�erine g�re frekans hesaplamas� yapar
                 end


    end

end 