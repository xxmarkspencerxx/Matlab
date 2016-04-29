%This program determines the probability of a 4 of a kind in a 6 card draw
loop=10000;
four_of_a_kind=0;

[spades]=1:13;
[hearts]=14:26;
[clubs]=27:39;
[diamonds]=40:52;
%constructs a deck matrix based on the 4 suits
[deck]=[spades hearts clubs diamonds];

for i=1:loop
    %these variables keep track of the suit count per 6 card draw
    scount=0;
    hcount=0;
    ccount=0;
    dcount=0;
    %this makes a 6 element array of random numbers with no repeats that
    %represents the 6 cards drawn from the deck.
    draw=randperm(52,6);
    %loops through drawn cards
    for j=1:6
        %increments the suit count depending on which suit each card is.
        if(ismember(draw(j),spades)==1)
            scount=scount+1;
        elseif(ismember(draw(j),hearts)==1)
            hcount=hcount+1;
        elseif(ismember(draw(j),clubs)==1)
            ccount=ccount+1;
        elseif(ismember(draw(j),diamonds)==1)
            dcount=dcount+1;
        end
    end
    %if 4 of the same suit is found in the hand, increments variable
    if(scount==4||hcount==4||ccount==4||dcount==4)
        four_of_a_kind=four_of_a_kind+1;
    end  
end
probability=four_of_a_kind/loop;
disp(probability);