function [frekans]=frek(nota,oktav,oktavdegeri)%frek fonksiyonu olusturduk

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalar� diziye aktard�k
n=strcmp(notalar,nota);
m=find(n,1);
        if (nargin==0) %deger girilmemi�sse deger girin diye hata verir
                 disp ('veri girisi yapiniz');
        elseif (nargin==1)%tek deger g�nderilmi��se asag�daki islemleri yapar
                 if (m==13)%sus degerini kontrol eder
                    frekans=0;%sus degeri ise frekans s�f�r oluyor
                else 
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%tek deger girilmi�sse oktav 4 alarak devam eder
                 end
        elseif (nargin==2) %iki deger varsa
                 if (m==13)%sus degeri varsa
                    frekans=0;%sus varsa frekans s�f�r
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
%fonksiyon tanimladik ve girlicek argumanlari belirledik.�stte girdigimiz
%notaya gore altta d degiskeni deger aliyor ve formul hesaplaniyor
%a=440;%La degerini referans ald�k
%if nargin<2
 %   m=4;
%end
    
%switch nota  %notaya karsilik gelen degeri aliyor.�rnegin do 1.sirada 1 degerini aliyor.C# 2.sirada 2 degerini aliyor
    
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
        
      %otherwise %hi�bir �ey girilmesse default degeri
       % d=10;
    
    
%end
%c=(a)*2^((m-4)+(d-10)/12);


%la notas�n�n frekans�n� temel ald�m
%http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
%formulu burdan buldum sayfa 30
