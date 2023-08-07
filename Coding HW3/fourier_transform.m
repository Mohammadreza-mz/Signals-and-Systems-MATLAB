function ans = fourier_transform(x, n)
    w = [-2*pi:0.01:2*pi];
    ans = exp(-1i*w'*n) * x.';
end