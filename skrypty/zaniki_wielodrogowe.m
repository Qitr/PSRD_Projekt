close all;
clear all;
%% Obliczanie glebokosci zanikow wielodrogowych
% A = [20,20,20,2,2,2,2];%[dB]
% A= 20;
h1=37;h2 = 68.6323;
hl = min(h1,h2);
d=20.7; % km

dN1 = -1.56590e2;
sa = 38.3;
K = 10^(-4.4-0.0027*dN1) * (10+sa)^(-0.46)
%K = 1.7708e-05;
eps_p =abs(h2-h1)/d;
f = [24.563 25.571]; %
psi = 52;
% pw = (K*d^3.4).*((1+eps).^(-1.03)).*f.^(0.8).*10.^(-0.00076*h1-A/10);
dG=10.5 - 5.6*log10(1.1-abs(cosd(2*psi))^0.7)-2.7*log10(d)+1.7*log10(1+eps_p)
% p = (10^(-dG/10))*pw
p=0.01;
pw = p*10^(dG/10)
% A=-10*(log10(pw/((K*d^3.4).*((1+eps).^(-1.03)).*f.^(0.8)))+0.00076*h1)
A = -10*( log10(pw ./ (K*(d^3.4).* ((1+eps_p).^-1.03).*f.^(0.8))) + 0.00076*hl)


%% Obliczanie p-stwa depolaryzacji dla czystego powietrza
XPDg = 32;
if XPDg <= 35
    XPD0 = XPDg+5;
else
    XPD0 = 40;
end
p0 = K*d^(3.4) .* ((1+abs(eps_p)).^(-1.03))* f.^(0.8) * 10.^(-0.00076*hl);  % [%]
P0 = p0/100;
eta = 1 - exp(-0.2*(P0).^0.75);
k_XP = 0.7; % dla jednej anteny nadawczej
Q = -10.*log10(k_XP.*eta./P0)
C = XPD0 + Q;
C0_I = 19.5387 + 10;
M_XPD = C - C0_I;
P_XP = P0 .* 10.^(-M_XPD/10)
P_XP_proc = P_XP * 100

%% Prawdopodobienstwo depolaryzacji powodowane opadami
A_001 = 34.6208;
f1 = 24.563;
f2 = 25.571;
U0 = 15;
U_1 = U0 + 30*log10(f1);
U_2 = U0 + 30*log10(f2);
U = min(U_1, U_2);
V = 22.6;
Ap = 10^((U-C0_I)/V);
m = 23.26*log10(Ap/(0.12*A_001));
if m > 40
    m = 40;
end
n = (-12.7+sqrt(161.23-4*m))/2;
P_XPR = 10^(n-2)
P_XPR_proc = P_XPR*100

