clc
clear all

s = 4       %skalar
v1 = [1 2 3 4]  %riadkovy vektor - medzery medzi prvkami vektora
v2 = [5;6;7]    %stlpcovy vektor - bodkociarky medzi prvkami vektora

%vytvorenie vektora roznymi sposobmi
v11 = [0 0.5 1 1.5 2 2.5 3]
v12 = 0:0.5:3
v13 = linspace(0,3,7)

%upravenie prvku vektora
v13(3) = 8
v13       %vypis upraveneho vektora


v21 = 1:1:3
v22 = 2*v21 %prenasobenie vektora
v23 = v21 + [3 2 1] %sucet vektorov
v24 = v21 + 2 %pripocitanie konstanty ku vsetkych prvkom vektora
