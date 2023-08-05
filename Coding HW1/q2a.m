n= [-20:20];

x = q2_x(n);
stem (n,x);
title('q2.a');
xlabel('n');
ylabel('x(n)');

%%{
y= q2_x(n)-q2_x(2*n+1);
stem (n,y);
title('q2.a');
xlabel('n');
ylabel('y(n)');
%%}

%%{
y= exp(1i*pi*n) .* cos(0.5*pi*n) .* q2_x(n);
stem (n,y);
title('q2.a');
xlabel('n');
ylabel('z(n)');
%%}