repeats = 200;

theta = 2;
mu = 0;
x= zeros(1,200);
for i=0:repeats
    x(1,i+1)= randn * theta + mu;
end
histogram(x,20);

%Fitting Gaussian Line
pd=fitdist(x(:),'normal')
x=-8:0.1:8;  
PDF=pdf(pd,x); 

%overlay the fit
PDF=PDF/max(PDF); %normalise
%scale to y axis
y=ylim;
PDF=PDF*y(2);

hold on
plot(x,PDF,'r-','LineWidth',2)
hold off

average = mean(x);
fprintf('Expected Value of Profit: %g\n', average);

