close all;
clear all;
f = 25.571; %freq [GHz]
T = 273.15;
d=20.7; % distance [km]
%% T³umienie opadowe
kv=0.1533;av=0.9491; % stale z tabeli
R001=32; %[mm]
gamma = kv*R001^av; % t³umiennosc w [dB/km]
r = 1/(1+d*exp(0.015*R001)/35);
A001 = gamma*d(end)*r; % t³umienie w [dB]
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