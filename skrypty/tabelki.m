clear all;
close all;

f = 24.563; %25.571   % [GHz]
R = 6370; % [km]
k = 4/3;  % wart. dla troposfery normalnej
Rz = R*k;

ke = 0.57;
Rze = R*ke;

d = 20.7 % [km] - dl. calej trasy
d1 = [0.09 0.35 3.11 14.7 15.3 15.9 17.6]; % [km] - odl do przeszkody od poczatku trasy
d2 = d - d1
wys_przeszkod = [134   149    98   130   133   135   126];

%% KROK 1

y = d1.*d2./(2*Rz);
y_w_metrach = round(y*1000,1)
wys_przeszk_popr = wys_przeszkod + y_w_metrach

F1 = round(17.3 * sqrt(d1.*d2./(f*d)), 1)
wys_przeszk_popr_F1 = wys_przeszk_popr + F1;

%% KROK 2

yE = d1.*d2./(2*Rze);
yE_w_metrach = round(yE*1000, 1)
wysE_przeszk_popr = wys_przeszkod + yE_w_metrach
F1_03 = round(0.3*F1, 1)
wysE_przeszk_popr_F1 = wysE_przeszk_popr + F1_03;

h_umieszcz_anten = [149.7 166.9];
roznica_anten = max(h_umieszcz_anten) - min(h_umieszcz_anten)
rozn_h_linii_dla_przeszk = round(d1.*1000 .* roznica_anten / (d*1000), 2)

