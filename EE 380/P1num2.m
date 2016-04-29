%this displays the probability of getting exactly 35 heads 
%after flipping a coin 100 times.
tosses=100;
repeats=1000000;
heads35=0;
for l=0:repeats
    heads=0;
    %flips a coin 100x
    for i=0:tosses
        c=randi(2);
        %will count amount of heads
        if(c==1)
            heads=heads+1;
        end
    end
    %increment heads35 if 35 heads are found after 100 flips
    if(heads==35)
        heads35=heads35+1;
    end
end
probability=heads35/repeats;
display(probability);