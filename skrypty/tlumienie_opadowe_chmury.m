close all;
clear all;
f = 25.571; %freq [GHz]
T = 273.15;
d=20.7; % distance [km]
%% T³umienie opadowe
kv=0.1533;av=0.9491; % stale z tabeli
%R001=interpolacja_biliniowa([52.125,52.2,52.25],[21.125,21.14,21.25],[26.589,26.549;26.294,26.288]); %[mm/h]
R001=24.294;
gamma = kv*R001^av; % t³umiennosc w [dB/km]
r = 1/(0.477*d^0.633*R001^(0.073*av)*f^0.123-10.579*(1-exp(-0.024*d)));
A001 = gamma*d(end)*r % t³umienie w [dB]
phi = (147.6585-147)/(d*1e3);
%% T³umienie wywo³ane chmurami
th = 300/T;e0 = 77.66+103.3*(th-1);
e1 = 0.0671*e0; e2 = 3.52;
fp = 20.2-146*(th-1)+316*(th-1)^2;
fs = 39.8*fp;
eps_bis = f*(e0-e1)/(fp*(1+(f/fp)^2))+f*(e1-e2)/(fs*(1+(f/fs)^2));
eps_prim =(e0-e1)/(1+(f/fp)^2)+(e1-e2)/(1+(f/fs)^2)+e2;
n=(2+eps_prim)/eps_bis;
K = 0.819*f/(eps_bis*(1+n^2));
M=0.05;
gamma_c = K*M;
A_cloud = gamma_c*d