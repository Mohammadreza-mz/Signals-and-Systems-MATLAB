n= [-20:100];
zaraieb= [1,-1,0.9];
h = filter(1, zaraieb, delta(n));
s = filter(1, zaraieb, u(n));

subplot(2, 1, 1);
plot(n, h);
xlabel('n');
ylabel('h');
title('h[n]');

subplot(2, 1, 2);
plot(n, s);
xlabel('n');
ylabel('s');
title('s[n]');
