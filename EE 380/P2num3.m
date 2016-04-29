loop=2000;
semicircle1 = 0:180;
semicircle2 = -180:0;
for i=1:loop
    samesemicircle=0;
    for j=1:i
        %random number is generated by rand*(max-min+1)+min
        randompoints = randi([-180,180],3,1);
        %will find out if randompoints is a subset of either semicircles
        isSubset1 = all(ismember(randompoints,semicircle1));
        isSubset2 = all(ismember(randompoints,semicircle2));

        if isSubset1||isSubset2
            samesemicircle = samesemicircle+1;
        end
    end
    probability(i)=samesemicircle/j;
end
plot(probability);
