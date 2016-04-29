%Birth Rate of boy = Birth rate of girl
loop=1000000;
threeboys=0;
for i=1:loop
   boys=0;
   for j=1:5
       rand = randi(2);
       if rand==1
           boys=boys+1;
       end
   end
   if boys==3
       threeboys=threeboys+1; 
   end
end
probability=threeboys/loop;
disp('probability when boys =  1/2')
disp(probability);

%Birth Rate of boy = 1/3 Birth rate of girl= 2/3
threeboys=0;
for m=1:loop
   boys=0;
   for j=1:5
       rand = randi(3);
       if rand==1
           boys=boys+1;
       end
   end
   if boys==3
       threeboys=threeboys+1; 
   end
end
probability=threeboys/loop;
disp('probability when boys = 1/3: ');
disp(probability);
