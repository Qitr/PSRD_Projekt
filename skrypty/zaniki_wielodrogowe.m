close all;
clear all;
%% Obliczanie glebokosci zanikow wielodrogowych
A = [20,20,20,2,2,2,2];%[dB]
A= 20;
h1=37;h2 = 68.6323;
K = 1.7708e-05;
e =(h2-h1)/20.7;
f = 25.571;psi = 52;
d=20.7;
pw = (K*d^3.4).*((1+e).^(-1.03)).*f.*10.^(-0.00076*h1-A/10);
dG=10.5 - 5.6*log10(1.1-abs(cosd(2*52))^0.7)-2.7*log10(d)+1.7*log10(1+e);
% p = (10^(-dG/10))*pw
p=0.01;
pw = p*10^(dG/10);
A=-10*(log10(pw/((K*d^3.4).*((1+e).^(-1.03)).*f))+0.00076*h1)