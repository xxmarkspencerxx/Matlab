clc;
n = 1000;
angle = 90;

gravity = 9.81; %m/s^2
v0 = 10; %m/s
windvelocity = 2;
finalvelocity = v0- windvelocity;

data= zeros(1,n); %data represents range of the cannon
for i=1:n-1
    %random value uniformly distributed over 0, n/2
    theta = rand*(angle/2)*2; 
    %another formula for range of a projectile: v^2 * sin(theta) / g
    data(1,i) = ((finalvelocity)^2) * sind( 2* theta)  / gravity ;
end
averagerange = mean(data);

histogram(data,30);
fprintf('Average Range: %g\n', averagerange);
    