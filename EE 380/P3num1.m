%Project 3 Binomial Distribution Q1 b
loop=1000000;
threefives=0;
for i=1:loop
   fives=0;
   for j=1:8
       rand = randi(6);
       if rand==5
            fives=fives+1;
       end
   end
   if fives==3
       threefives=threefives+1; 
   end
end
probability=threefives/loop;
disp(probability);