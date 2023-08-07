t = [-6:0.01:6];

Kmaxlist= [5 15 30];
for i = [1:3]
    subplot(3, 1, i);
    plot(t, q_2x(t, Kmaxlist(i)));
    title("x(t) when Kmax= "+ Kmaxlist(i));
    xlabel('t');
    ylabel('x(t)'); 
end
