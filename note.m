function[x,t]=note(frekans,vurus)% fonksiyon tan�mladik
    fs=8192;%�rnekleme frekans�
    t=0:1/fs:vurus-(1/fs); %periyod
       a=length(t);%periyod boyutu
    hk=[1 0.8 0.4 0.1]; %harmonik katsay�lar� dizide
        b=length(hk); %hk dizisinin boyutu
        x=zeros(1,a); %periyot boyutu kadar s�f�rdan dizi olusturduk
        for i=1:b %1 den hk dizisi boyutuna kadar bir d�ng� olu�turuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %sinus sinyalinin harmoni�i 
        end
A=linspace(0,1.5,a/4);%genli�i 1,5'a kadar ��kan ve periyodun 1/4'u kadar aral�kta vekt�r olu�turur
B=linspace(1.5,1,a/8);%genli�i 1,5 dan 1'e kadar inen ve periyodun 1/8'i kadar aral�kta vekt�r olu�turur
C=linspace(1,1,a/2);%genli�i sabitolan ve periyodun 1/2'si kadar aral�kta vekt�r olu�turur
D=linspace(1,0,a/8);%genli�i 1 den 0'e kadar inen ve periyodun 1/8'i kadar aral�kta vekt�r olu�turur
 zarf=[A B C D];%vektorleri diziye aktard�k
 x=x.*zarf;%x le zarf elamanlar�n� tek tek carpar