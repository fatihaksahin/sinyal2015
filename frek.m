function [c]=frek(nota,m)

switch nota  %notaya kar��l�k gelen degeri al�yor.�rne�in do 1.s�rda 1 degerini al�yor.C# 2.s�rada 2 de�erini al�yor
    case {'Do'}
        d=1;
        case {'C#'}
        d=2;
        case {'Re'}
        d=3;
        case {'Eb'}
        d=4;
        case {'Mi'}
        d=5;
        case {'Fa'}
        d=6;
        case {'F#'}
        d=7;
        case {'Sol'}
        d=8;
        case {'G#'}
        d=9;
        case {'La'}
        d=10;
        case {'Bb'}
         d=11;
        case {'Si'}
        d=12;
    
end
c=(440)*2^((m-4)+(d-10)/12);
%http://www.darussafaka.k12.tr/wp-content/uploads/2014/04/PROJE-24-MATEMAT%C4%B0%C4%9E%C4%B0N-MELOD%C4%B0S%C4%B0-FMV-I%C5%9EIK-AYAZA%C4%9EA-II.pdf
%formulu burdan buldum sayfa 30