function [x] = q2_x(n)
    x= delta(n) + delta(-n+4) -2*(u(n+3)-u(n-3));
end
