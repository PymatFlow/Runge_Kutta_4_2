function Runge_Kutta_4_2

clc; %Clears the screen
clear all;

h=1.5; %step size
x = 0:h:3; % Calculates upto y(3)
y = zeros(1,length(x));
y(1) = 5;

for i=1:(length(x)-1) %calculation loop
    k_1 = F_xy(x(i),y(i));
    k_2 = F_xy(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = F_xy((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = F_xy((x(i)+h),(y(i)+k_3*h));
    
    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h; %main equation
end

function y=F_xy(t,r)
y=3.*exp(-t)-0.4*r; %change the function as you desire