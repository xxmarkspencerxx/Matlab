trials=1000;
X=zeros(trials,1);

w=1:3; %thickness of n from 1-3cm
n=[1 2 5 10 15]; %n = stacks of n
bins=10;
a=w(1); b=w(2);

mu_w=(a+b)/2;
sig_w=sqrt((b-a)^2/12);
%repeats for every book stacks
p=1;
for B=n
    mu = B*mu_w;
    sig = B^0.5*sig_w;
    for k=1:trials
        X(k)=sum((b-a)*rand(B,1)+a); 
        %sum of random variables is put in X(k)
    end
    % Graphs only for n=1,2,10
    if (B==1||B==2||B==10)
        [h, xbar]=hist(X,bins); 
        del=diff(xbar(1:2));
        pdf=h/N/del; % calculates pdf

        subplot(2,2,p);
        hold;
        bar(xbar,pdf); grid;
        gf=inline('(1/(sig*sqrt(2*pi)))*exp(-(z-mu).^2/(2*sig^2))');
        z=min(X):0.1:max(X);
        plot(z,gf(mu, sig, z), 'r','LineWidth', 3)
        title(['Distribution of stack height; N=', num2str(B)])
        p=p+1; %p is incremented for subplot
    end
end