range = [0:100];
a = zeros([1 length(range)]);
for k= range
    for j= [-2:0.01:2]
        a(k+1) = a(k+1) + q_4x(j) * exp(-1i*pi*k*j/2);
    end
    a(k+1) = a(k+1) / 4;
end

subplot(2, 1, 1);
stem(range, angle(a));
title('a_k phase');
xlabel('k');
ylabel('a_k phase');

subplot(2, 1, 2);
stem(range, abs(a));
title('a_k magnitude');
xlabel('k');
ylabel('a_k magnitude');