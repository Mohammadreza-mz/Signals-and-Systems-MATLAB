function x = q_2x(t, Kmax)
    x= zeros([1 length(t)]);
    range= [0:Kmax];
    for k = range
        x = x+ 2*abs(CK(k)) * cos(k*(pi/3)*t + angle(CK(k)));
    end
end