Fatih Aksahin
030113020
Sinyal Isleme
Proje : MATLAB ile sentezleme

frek.m dosyasý oktav hesaplamasý yapýyor
frek.m dosyasýndan kullanýlan formul icin su siteden yararlanilmistir
http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
sayfa 30
formulu La notasini temel alarak yaptým




note.m sinüs sinyalinin grafigini cizdiriyor.Olusturulan sinüs sinyalinin attack süresi,decay süresi,sustain süresini gösteriyor



notalar.png notalarýn resimlerini gösteriyor




notalar.txt notalarýn isimlerini,ölçülerini,oktavlarýný içeriyor



notalar arasýndaki iliski c=(440)*2^((m-4)+(d-10)/12); þeklinde aciklanabilir.
toplam 12 nota oldugu icin 12 ye boluyoruz.4 oktavdaki la notasýný referans aldýk o yuzden 4 cikariyoruz
d kacýncý sýradaki nota oldugu
m oktav
Referans olarak 440 Hz'deki 4. oktavdan La notasýný kullanýrsak, diðerlerini 1'den 12'ye kadar (C'den B'ye kadar) hesaplayabiliriz



sentez.m dosyasýnda harmonik ve echo ekliyorum.Normalizasyon yapýyoruz.notalar.txt den nota bilgilerini cekiyoruz