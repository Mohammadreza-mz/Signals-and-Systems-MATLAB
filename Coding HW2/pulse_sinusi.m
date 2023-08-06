function [x_b] = pulse_sinusi(n)
    x_b= sin(pi*n/25) .* ( u(n)-u(n-100) );
end