Fatih Aksahin
030113020
Sinyal Isleme
Proje : MATLAB ile sentezleme

frek.m dosyas� oktav hesaplamas� yap�yor
frek.m dosyas�ndan kullan�lan formul icin su siteden yararlanilmistir
http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
sayfa 30
formulu La notasini temel alarak yapt�m




note.m sin�s sinyalinin grafigini cizdiriyor.Olusturulan sin�s sinyalinin attack s�resi,decay s�resi,sustain s�resini g�steriyor



notalar.png notalar�n resimlerini g�steriyor




notalar.txt notalar�n isimlerini,�l��lerini,oktavlar�n� i�eriyor



notalar aras�ndaki iliski c=(440)*2^((m-4)+(d-10)/12); �eklinde aciklanabilir.
toplam 12 nota oldugu icin 12 ye boluyoruz.4 oktavdaki la notas�n� referans ald�k o yuzden 4 cikariyoruz
d kac�nc� s�radaki nota oldugu
m oktav
Referans olarak 440 Hz'deki 4. oktavdan La notas�n� kullan�rsak, di�erlerini 1'den 12'ye kadar (C'den B'ye kadar) hesaplayabiliriz



sentez.m dosyas�nda harmonik ve echo ekliyorum.Normalizasyon yap�yoruz.notalar.txt den nota bilgilerini cekiyoruz