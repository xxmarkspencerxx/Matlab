x=-5:.1:15;
y = randUnifDist(1,10,length(x));
figure(1);
subplot(1,2,1);
plot(x,y);
title('Random uniform distribution example');
xlabel('x');
ylabel('F(x)');
axis([-10 20 0 10]);