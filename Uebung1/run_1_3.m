%%% Uebung 1 %%%

%%% clean environment
clear all
clc
close all

disp('Ausgaben der dual1(z,b) Funktion:')
d1_p15_p8   = dual1(15,8)
d1_p42_p8   = dual1(42,8)
d1_m77_p8   = dual1(-77,8)
d1_p714_p8  = dual1(714,16)
d1_m512_p16 = dual1(-512,16)
d1_m77_p16  = dual1(-77,16)

disp('Ausgaben der dual2(z,b) Funktion:')
% dual2(15,8)
% dual2(42,8)
% dual2(-77,8)
% dual2(714,16)
% dual2(-512,16)
% dual2(-77,16)
