n = [0:20];
outputOfCK = arrayfun(@CK, n);
phase = angle(outputOfCK);
magnitude = abs(outputOfCK);

subplot(2, 1, 1);
stem(phase);
title('C_{k} phase');
xlabel('k');
ylabel('phase');

subplot(2, 1, 2);
stem(magnitude);
title('C_{k} magnitude');
xlabel('k');
ylabel('magnitude');