clc;
x = [3 11 22 31 64 92 112 176 259 362];
y = [2 3 4 5 6 7 8 12 15 21] ;

%a)
bestfit = polyfit(x,y,1);
a1 = bestfit(1); %returns slope of the polynomial
b1 = bestfit(2); % returns y intercept of the polynomial

fprintf('(1) coefficient a: %g', a1);
fprintf(' coefficient b: %g\n', b1);

bestfit2 = polyfit(x,y,2);

a2 = bestfit2(1); %returns a coofiecient of the polynomial
b2 = bestfit2(2); % returns b cooficient
c2 = bestfit2(3); %returns c cooficient

fprintf('(2) coefficient a: %g', a2);
fprintf(' coefficient b: %g ', b2);
fprintf(' coefficient c: %g\n', c2);

%plots our data with best fit line using polyfit & polyval
plot(x,y,1:0.1:400,polyval(bestfit2,1:0.1:400),'-');

%b)
mdl = fitlm(x,y);
rsquared = mdl.Rsquared.Ordinary;
display(rsquared);

