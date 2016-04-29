%This program generates a histogram that represents the number of rolls
%required of two dice before a sum of 9 appears
repeats = 10000;

for t=1:repeats
    sum=0;
    dice = 0;
    %Will keep rolling 2 dice until sum is 9 
    while sum~=9
        x=randi(6);
        y=randi(6);
        sum=x+y;
        dice=dice+1;
    end
    %plots on the histogram how much dice it took
    Plot(t)=dice;
    dice=0;
end
%generates histogram
i=1:max(Plot);
[x,n]=hist(Plot,i);
bar(n,x*100/repeats);
xlabel('Number of Rolls');
ylabel('Percent probability (%)');