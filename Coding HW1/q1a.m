n= [-20:20];
x= u(n) - u(n-10);

stem (n,x);
title('q1.a-x');
xlabel('n');
ylabel('x(n)');

h= (0.9.^n).*u(n);
%%{
stem (n,h);
title('q1.a-h');
xlabel('n');
ylabel('h(n)');
%%}
