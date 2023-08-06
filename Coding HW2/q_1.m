n = [1:40];
zaraieb_x =[0.9 ,-0.45 ,0.35 ,0.002];
zaraieb_y =[1 ,0.71  ,-0.46 ,-0.62];
h = impz(zaraieb_x, zaraieb_y, n);


stem(n, h);
title('ans q1:');
xlabel('n');
ylabel('ans');