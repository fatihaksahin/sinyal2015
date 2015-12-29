function [frekans]=frek(nota,oktav,oktavdegeri)%frek fonksiyonu olusturduk

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalarý diziye aktardýk
n=strcmp(notalar,nota);
m=find(n,1);
        if (nargin==0) %deger girilmemiþsse deger girin diye hata verir
                 disp ('veri girisi yapiniz');
        elseif (nargin==1)%tek deger gönderilmiþþse asagýdaki islemleri yapar
                 if (m==13)%sus degerini kontrol eder
                    frekans=0;%sus degeri ise frekans sýfýr oluyor
                else 
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%tek deger girilmiþsse oktav 4 alarak devam eder
                 end
        elseif (nargin==2) %iki deger varsa
                 if (m==13)%sus degeri varsa
                    frekans=0;%sus varsa frekans sýfýr
                 else
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12)); %frekans  uretir
                 end
        else %2 den fazla deger varsa
                 if (m==13)%sus varsa
                     frekans=0;%sus varsa frekans 0
                 else
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12)); %girilen degerlere gore hesaplama yapar
                 end


    end

end 
%-------------------------------------NOT sentez.m olustururken frek.m hata
%verdigi icin frek.m degistiridm eskisi burda
%function [c]=frek(nota,m)
%fonksiyon tanimladik ve girlicek argumanlari belirledik.Üstte girdigimiz
%notaya gore altta d degiskeni deger aliyor ve formul hesaplaniyor
%a=440;%La degerini referans aldýk
%if nargin<2
 %   m=4;
%end
    
%switch nota  %notaya karsilik gelen degeri aliyor.Örnegin do 1.sirada 1 degerini aliyor.C# 2.sirada 2 degerini aliyor
    
 %   case {'Do'}
  %      d=1;
   %     case {'Dod'}
   %     d=2;
    %    case {'Re'}
     %   d=3;
      %  case {'Mib'}
       % d=4;
        %case {'Mi'}
        %d=5;
       % case {'Fa'}
        %d=6;
        %case {'Fad'}
        %d=7;
        %case {'Sol'}
        %d=8;
        %case {'Sold'}
        %d=9;
        %case {'La'}
        %d=10;
        %case {'Sib'}
         %d=11;
        %case {'Si'}
        %d=12;
        %case{'sus'}
        %a=0;
        %d=0;
        
      %otherwise %hiçbir þey girilmesse default degeri
       % d=10;
    
    
%end
%c=(a)*2^((m-4)+(d-10)/12);


%la notasýnýn frekansýný temel aldým
%http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
%formulu burdan buldum sayfa 30
