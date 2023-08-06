n = [-50:50];
%x_a= 5 * ( u(n)-u(n-20) );
%x_b= sin(pi*n/25) .* ( u(n)-u(n-100) );

subplot(4, 1, 1);
plot(n, pulse_mostatili(n));
xlabel('n');
ylabel('y');
title('pulse e mostatili');


subplot(4, 1, 2);
plot(n, tafazolgir(@pulse_mostatili,n));
xlabel('n');
ylabel('y');
title('2.a: tafazolgir pulse e mostatili');


subplot(4, 1, 3);
plot(n, pulse_sinusi(n));
xlabel('n');
ylabel('y');
title('pulse e sinusi');

subplot(4, 1, 4);
plot(n, tafazolgir(@pulse_sinusi,n));
xlabel('n');
ylabel('y');
title('2.b: tafazolgir pulse e sinusi');