close all;clear all;
hg =[37,68.6323]; % wysoko�� anten nad poziomem gruntu
h1g = 37.68; h2g = 68.6323;
y1 = 113;y2=98; % wysokosc gruntu
% xo=[15.9];
xo = 1.5;
yo = [142];
d = 20.7;
f= 25.571;
%% Okreslenie czy obszar moze byc zrodlem zanikow interferencyjnych
% obliczam wysokosci anten wzgledem powierzchni odbijajacej
tgv = 1*1e-3; % nachylenie obszru odbijajecego
h1 = h1g+y1-yo+xo*tgv*1e3;
h2 = h2g+y2-yo-(d-xo)*tgv*1e3;
k = [0.52,1e9]; % zakres zmian wspol refrakcji
R = 6370; % promien Ziemi [km]
Rz = k*R;
m = d^2./(4*Rz*(h1+h2))*1e3;
c = (h1-h2)/(h1+h2);
b = 2.*sqrt((m+1)./(3.*m)).*cos(pi/3+1/3*acos(3.*c./2.*sqrt(3*m./((m+1).^3))));
%% Odleglosci do powierzchni odbijajacej
d1 = d*(1+b)/2; % [km]
d2 = d*(1-b)/2; % km
%% Obliczam roznice drog w dlugosciach fali
tau = 2*f/(0.3*d)*(h1-(d1.^2)./(12.74*k)).*(h2-(d2.^2)./(12.74.*k))*1e-3;
% obliczam tau_max-tau_min
dtau = max(tau)-min(tau);
if dtau>=1
    display('Trzeba uwzglednic odbicie');
else
   display('Male pstwo zanikow') 
end
%% Parametry elektryczne suchego gruntu dla 25 GHz
sigma=7e2;
er = 7;
eps = er-1i*18*sigma/f;
%eps = 81-1i*30; % przenikalnosc elektryczna wody
%% obliczam efektywny wspolczynnik odbicia
phi=(h1+h2)/d.*(1-m.*(1+b.^2));
Ch = eps-cos(phi).^2; % polaryzacja horyzontalna
Cv = Ch./(eps.^2);
gammav = abs((sind(phi)-sqrt(Cv))./(sind(phi)+sqrt(Cv)));
%% Wyzmiary strefy Fresnela na Ziemi
L1 = d*sqrt(1+(4*f*h1*h2*1e-2)/(3*d))./(1+f*(h1+h2)^2*1e-2/(3*d)); % dlugosc [km]
W1 = sqrt(3*d*1e-4/f);
%% Obszar w calosci odbija zatem
Rs = 1;
%% Teren nierowny
dew = 2; % dewiacja wysokosci
g = 40*pi*f*1.5*sin(phi)/3;
Rr = sqrt((1+(g.^2/2))./(1+2.35*(g.^2/2)+2*pi*(g.^2/2).^2));
% Rr=1;
%% Wspolczynnik rozogniskowania 
D = sqrt((1-m.*(1+b.^2))./(1+m.*(1-3*b.^2)));
gamma_sh_v = gammav.*D*Rs.*Rr;
%% K�ty miedzy sk�adowa bezposrednia i odbita
a1o = 180/pi*(h1./d1-(h1-h2)./d-d2./(12.74.*k))*1e-3;
a2o = 180/pi*(h2./d2-(h2-h1)./d - d1./(12.74.*k))*1e-3;
a1 = 1;a2=1;
Lo = 12*((a1o./a1).^2+(a2o./a2).^2)-20.*log10(gamma_sh_v); % ocena oslabienia skladowej odbitej wzgledem  skl bezposredniej

