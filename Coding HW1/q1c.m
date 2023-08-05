n= [-20:20];
x= u(n)-u(n-10);
h= (0.9.^n).*u(n);
y= conv(x,h);
stem (y);
title('q1.b');
xlabel('n');
ylabel('y(n)');


