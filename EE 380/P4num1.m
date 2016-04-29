% Plot of pdfs given x, mu and the variance
x=-6:0.0001:6; 

subplot(1,2,1) % first plot 
hold;
%calculates normal pdf using a custom pdf function
plot(x,pdfNorm(x,0,1),'black') 
plot(x,pdfNorm(x,0,10^-1),'blue') 
plot(x,pdfNorm(x,0,10.^-2),'red') 
plot(x,pdfNorm(x,-3,1),'black--') 
plot(x,pdfNorm(x,-3,10.^-1),'blue--')
plot(x,pdfNorm(x,-3,10.^-2),'red--') 

xlabel('x')
ylabel('f(x; \mu, \sigma^2)')
legend('f(x;0,1)','f(x;0,10^{-1})','f(x;0,10^{-2})','f(x;-3,1)','f(x;-3,10^{-1})','f(x;-3,10^{-2})')

subplot(1,2,2) % second plot
hold 
%calculates normal cdf using a custom cdf function
plot(x,cdfNorm(x,0,1),'black') 
plot(x,cdfNorm(x,0,10.^-1),'blue') 
plot(x,cdfNorm(x,0,10.^-2),'red') 
plot(x,cdfNorm(x,-3,1),'black--') 
plot(x,cdfNorm(x,-3,10.^-1),'blue--') 
plot(x,cdfNorm(x,-3,10.^-2),'red--') 

xlabel('x')
ylabel('F(x; \mu, \sigma^2)')
legend('F(x;0,1)','F(x;0,10^{-1})','F(x;0,10^{-2})','F(x;-3,1)','F(x;-3,10^{-1})','F(x;-3,10^{-2})')

%ANALYSIS: 
%Changing the Mu value simply translates the values to the left or right of
%the plot relevant to the mu value.
%Changing the variance of the function makes the graph steeper or lower.
%The lower the variance, the steeper the graph, which shows a 
%smaller disribution of values.