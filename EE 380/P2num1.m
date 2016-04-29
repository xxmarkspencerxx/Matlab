%a and b will be the bounds for 
%our probability density function f
a=1;
b=10;
x=-5:.1:15;
%f is our pdf
f=[];
for i=a:length(x)
    if x(i)>a && x(i)<b
        f(i)=1/(b-a);
    else
        f(i)=0;
    end
end

%plotting pdf
figure(1);
subplot(1,2,1);
plot(x,f);
title('PDF');
xlabel('x');
ylabel('f(x)');

%F is our cdf 
F=[];
for i=a:length(x)
    if x(i)>a && x(i)<b
        F(i)=(x(i)-a)/(b-a);
    elseif x(i)>=b
        F(i)=1;
    end
end

%plots cdf
subplot(1,2,2);
plot(x,F);
title('CDF');
xlabel('x');
ylabel('F(x)');
axis([-5 15 0 1.5]);

%testing unifpdf and unifcdf functions
pdfFunction = unifpdf(x,a,b);
figure(2);
subplot(1,2,1);
plot(x,pdfFunction);
title('PDF using unifpdf');
xlabel('x');
ylabel('f(x)');

cdfFunction = unifcdf(x,a,b);
%plots cdf
subplot(1,2,2);
plot(x,cdfFunction);
title('CDF using unifcdf');
xlabel('x');
ylabel('F(x)');
axis([-5 15 0 1.5]);


