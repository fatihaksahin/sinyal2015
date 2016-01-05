function [frekans]=frek(nota,oktav,oktavdegeri)%frekans döndürmektedir.

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalarý diziye aktardýk
n=strcmp(notalar,nota); %dizinin icine aktarýr indeksi 1 arttýr.
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.

        if (nargin==0) %hiç deger girilmemiþse
                 disp ('veri giriþi yapýnýz');%veri giriþi yapýnýz diye hata verir               
        elseif (nargin==1)%tek deðer girilmiþse
                 if (m==13)%sus olup olmadýgýný kontrol eder
                    frekans=0;%sus ise frekans sýfýr olur
                else %
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%tek  deger girilmiþse oktavý 4 oktav degerini 0 kabul eder
                end%
                
        elseif (nargin==2) %eðer iki deðer girilmiþse
                 if (m==13)%sus olup olmadýgýný kontrol eder
                    frekans=0;%sussa frekans  sýfýr
                 else
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %fonksiyona göre üretir
                 end
        else %iki degerden fazla ise 
                 if (m==13)%sus olup olmadýgýný kontrol eder
                     frekans=0;%sussa frekans sýfýr
                 else
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %gönderilen nota oktav ve oktav deðerine göre frekans hesaplamasý yapar
                 end


    end

end 