function[x,t]=note(frekans,vurus)% note fonksiyonu tanimladik
    fs=8192;%ornekleme frekansý
    t=0:1/fs:vurus-(1/fs); %sinyalin periyodu 
       a=length(t);%periyod boyutu 
    hk=[1 0.8 0.4 0.1]; %harmonik katsayilari
        b=length(hk); %hk boyutu
        x=zeros(1,a); 
        for i=1:b %for döngusu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t)); %harmonik olusturuldu
        end
A=linspace(0,1.5,a/4);%vektor
B=linspace(1.5,1,a/8);%vektor
C=linspace(1,1,a/2);%vektor
D=linspace(1,0,a/8);%vektor
 zarf=[A B C D];%vektorlerý diziye attýk
 x=x.*zarf;%xle zarf dizisindeki elemanlarla carptik
 