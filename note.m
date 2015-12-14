function [xx,tt] = note(ff,dur) %fonksiyonu tanimliyoruz.girilicek argumanlarý tanýmladýk
tt = 0:1/(100*ff):dur; %0 dan dur a kadar 1/(100*ff) kadar artýyor
xx = sin(2*pi*ff*tt); %bilgileri kullanarak sinüs olusturuyoruz
%xx,tt]=note(1,3);
%plot(tt,xx)
%grafigi cizdirmek icin ustteki kodu command window'a yazariz


