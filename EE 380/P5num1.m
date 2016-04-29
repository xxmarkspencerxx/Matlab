lambda=input('Enter lambda value: ');

kYi=0; k=0; % initialise
N=1000; %sample size

for i=1:10000
    while (kYi < 1)
        kYi = kYi -(1/lambda) * log(rand(1,N));
        k=k+1;
    end
end
X=k-1; % sets x -> k-1

bins=50;
[Y,Xbins]=hist(kYi,bins);
p=Y/N;
subplot(1,2,1); % first plot 
bar(Xbins,p);
subplot(1,2,2); % second plot 
x=0:1000;
y=poisspdf(x,lambda);
plot(x,y,'r', 'linewidth',1)
