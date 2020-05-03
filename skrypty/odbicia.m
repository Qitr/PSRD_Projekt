close all;clear all;
hg =[37,68.6323]; % wysokoœæ anten nad poziomem gruntu
y = [113,98]; % wysokosc gruntu
x0=[0.35,15.9]*1e3;
y0 = [144,135];
d = 20.7;
f= 25.571;
%% wysokosci sprowadzone
dh1=hg+y-y0(1);dh2=hg+y-y0(2);
v1 = atan(dh1./x0(1));v2 = atan(dh2./x0(2));
h1 = dh1+x0(1).*tan(v1);h2 = dh2+x0(2).*tan(v2);
h = [h1;h2];
% ke = linspace(0.57,1e9,1e4);
ke = [0.57,1,1.2,1.33,1.75,2,2.5,3,3.4,4.6,5,6,8.5,10,13,100,1e9];
R = 6375;
for k = 1:length(ke)
    ae = ke(k)*R;
    for i=1:length(x0)
        c = (h(i,1)-h(i,2))/((h(i,1)+h(i,2)));
        m = 1e3*d^2/(4*ae*((h(i,1)+h(i,2))));
        b = 2*sqrt((m+1)/(3*m))*cos(pi/3+1/3*acos(3*c/2*sqrt(3*m/((m+1)^3))));
%        b = abs(b);
        d1 = d*(1+b)/2;d2 = d*(1-b)/2;
        tau(k,i) = 2*f/(0.3*d)*(h(i,1)-d1^2/(12.74*ke(k)))*(h(i,2)-d2^2/(12.74*ke(k)))*1e-3;
    end
end
dtau = max(tau(:,2))-min(tau(:,2))
sigma=1; er=1; %% Do odczytania
Rs=1; sigmah=38.3;
for k=1:length(ke)
     ae = ke(k)*R;
             c = (h(i,1)-h(i,2))/((h(i,1)+h(i,2)));
        m = 1e3*d^2/(4*ae*((h(i,1)+h(i,2))));
        b = 2*sqrt((m+1)/(3*m))*cos(pi/3+1/3*acos(3*c/2*sqrt(3*m/((m+1)^3))));
    n = er-1i*18*sigma/f;
phi = (h(2,1)+h(2,2))/d*(1-m*(1+b^2));
C=(n-cos(phi)^2)/n;
ro(k) = abs((sin(phi)-sqrt(C))/(sin(phi)+sqrt(C)));
D = sqrt((1-m*(1+b^2))/(1+m*(1-3*b^2)));
L=d*(sqrt(1+4*h(2,1)*h(2,2)*1e-2/3/d))/(1+f*(h(2,1)+h(2,2))^2*1e-2/3/d);
W = sqrt(3*1e-4*d/f);
g = 40*pi*f*sigmah*sin(phi)/3;
Rr = sqrt((1+g^2/2)/(1+2.35*(g^2/2)+2*pi*(g^2/2)^2));
roeff(k) = ro(k)*D*Rr;
end
