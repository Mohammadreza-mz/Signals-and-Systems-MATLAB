t= [-10:0.01:10];

x = imag(2- exp(1- (1i*pi*t)));
phaze_x = angle(x);
andaze_x = abs(x);


subplot(2, 1, 2);
plot(t, phaze_x);
title('phaze x(t)');
xlabel('t');
ylabel('phaze_x');

subplot(2, 1, 1);
plot(t, andaze_x);
title('andaze x(t)');
xlabel('t');
ylabel('andaze x(t)');


w = (-10*pi : 0.01 : 10*pi);

X = (1i*w) ./ (1+(1i*w));
phaze_X = angle(X);
andaze_X = abs(X);

subplot(2, 1, 2);
plot(w, phaze_X);
title('phaze X(w)');
xlabel('w');
ylabel('phaze_X');

subplot(2, 1, 1);
plot(w, andaze_X);
title('andaze X(w)');
xlabel('w');
ylabel('andaze X(w)');

