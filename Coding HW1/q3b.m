n= [-20:20];

x1= (0.5 * (2 .^ n)).*(u(n+2)-u(n-2));
stem (n,x1);
title('q3-x1.a');
xlabel('n');
ylabel('x(n)');


x2 = zeros(1, 51);
for k = 1:6
    for l = -20:k
        x2(k) = x2(k) + (sin(2 * l) + exp(1i*(pi*l))) .* (((l + 3) >= 0) - ((l - 5) >= 0));
    end
end



[y, ny] = convolution(x1, x2);
ny = ny-20;

subplot(4, 1, 3);
stem(ny, y);
title('convolution');
xlabel('n');
ylabel('x_1[n] \ast x_2[n]');