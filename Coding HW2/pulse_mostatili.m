function [x_a] = pulse_mostatili(n)
    x_a= 5 * ( u(n)-u(n-20) );
end
