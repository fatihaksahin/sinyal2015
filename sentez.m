[nota,b,c]=textread('notalar.txt','%s %s %s');                              %notalar.txt degerleri okur
fs=8192;                                                                    %örnekleme frekansý
ds=round(fs/100);                                                           %durma süresi
go=round(fs/10);                                                            %gecikme süresi
notalar=zeros(1,fs);                                                        %dizi olusturduk 
a=zeros(1,length(notalar));                                                 
durak=zeros(1,ds);                                                         
                                                                            
   for i=1:(length(nota))
       oktav((i),1)=str2num(cell2mat(b(i,1)));                              %nota dizisi boyu döngüsü olusturduk
       vurus((i),1)=str2num(cell2mat(c(i,1)));                              %convert iþlemi
       frekans((i),1)=frek(nota((i),1),oktav((i),1));                       %frek fonk u cagýrdýk
       [x,t]=note(frekans((i),1),vurus((i),1));                             %note fonk u cagýrdýk
       notalar=[notalar durak x];                                           %birleþtirme iþlemi atama
   end                                                                      
 notalarecho=zeros(1,(length(notalar)));                                    %0 lardan olusan bir dizi
 for i=1:(length(notalar))                                                  %döngü olusturduk
     f=(go+i);                                                              %gecikme süresi döngüye sokuldu
     if f<(length(notalar))                                                 %þart saðlandý geçimi engellemek için
     notalarecho(i)=notalar(i)*0.3+notalar(f);                              %yüzde 30 kaydýrma iþlemi
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
  normalizenotalarecho=zeros(1,(length(notalar)));                          %normalizasyon iþlemleri için deðiþken tanýmladýk
  normalizenotalarecho=notalarecho/max(abs(notalarecho));                   %tepe degeri 1 e normalize edilmiþtir.
sound(normalizenotalarecho)                                                 %sinyal