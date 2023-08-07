n=[0:100];

x1 = u(n-1)-u(n-4);
x2 = (sin(n)./(pi * n)) .* (sin(2*n)./(pi*n));
x2(1) = 2/(pi^2);
x3 = sin(100*n) .* exp(-1i*pi*n);
for i = [1:3] 
    w=[-2*pi:0.01:2*pi];
    if i==1
        x=x1;
    elseif i==2
        x=x2;
    else
        x=x3;
    end
    
    fourier_transformx = fourier_transform(x,n);
    subplot(3, 2, 2*i-1);
    plot(w, abs(fourier_transformx));
    title("magnitude of fourier transformation(x"+ i +")");
    xlabel('n');
    ylabel("abs(ft(x"+ i +"))");
    
    subplot(3, 2, 2*i);
    plot(w, angle(fourier_transformx));
    title("phase of fourier transformation(x"+ i +")");
    xlabel('n');
    ylabel("angle(ft(x"+ i +"))");
end
