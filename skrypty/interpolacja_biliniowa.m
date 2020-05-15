function [f_out] = interpolacja_biliniowa(x_in,y_in,f)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% f - macierz 2x2 [f(x1,y1),f(x1,y2);f(x2,y1),f(x2,y2)]
x1 = x_in(3)-x_in(1); %dlugosc odcinka
% x_in = x_in./max(x_in);
% y_in = y_in./max(y_in);
%% x1 i x3 to wezly siatki
% x1 = x_in(1);
x=(x_in(2)-x_in(1))/x1; % interpolowana
% x2 = x_in(3);
%% druga wspolrzedna
y1 = y_in(3)-y_in(1); % wezly siatki
y = (y_in(2)-y_in(1))/y1;
%% Interpolacja
f_out=f(1,1)*(1-x)*(1-y)+f(1,2)*(1-x)*y+f(2,1)*x*(1-y)+f(2,2)*x*y;
end

