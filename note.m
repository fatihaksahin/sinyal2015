function [xx,tt] = note(ff,dur) %fonksiyonu tanimliyoruz.girilicek argumanlar� tan�mlad�k
tt = 0:1/(100*ff):dur; %0 dan dur a kadar 1/(100*ff) kadar art�yor
xx = sin(2*pi*ff*tt); %bilgileri kullanarak sin�s olusturuyoruz
%xx,tt]=note(1,3);
%plot(tt,xx)
%grafigi cizdirmek icin ustteki kodu command window'a yazariz


