function[x,t]=note(frekans,vurus)% fonksiyon tanýmladik
    fs=8192;%örnekleme frekansý
    t=0:1/fs:vurus-(1/fs); %periyod
       a=length(t);%periyod boyutu
    hk=[1 0.8 0.4 0.1]; %harmonik katsayýlarý dizide
        b=length(hk); %hk dizisinin boyutu
        x=zeros(1,a); %periyot boyutu kadar sýfýrdan dizi olusturduk
        for i=1:b %1 den hk dizisi boyutuna kadar bir döngü oluþturuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %sinus sinyalinin harmoniði 
        end
A=linspace(0,1.5,a/4);%genliði 1,5'a kadar çýkan ve periyodun 1/4'u kadar aralýkta vektör oluþturur
B=linspace(1.5,1,a/8);%genliði 1,5 dan 1'e kadar inen ve periyodun 1/8'i kadar aralýkta vektör oluþturur
C=linspace(1,1,a/2);%genliði sabitolan ve periyodun 1/2'si kadar aralýkta vektör oluþturur
D=linspace(1,0,a/8);%genliði 1 den 0'e kadar inen ve periyodun 1/8'i kadar aralýkta vektör oluþturur
 zarf=[A B C D];%vektorleri diziye aktardýk
 x=x.*zarf;%x le zarf elamanlarýný tek tek carpar