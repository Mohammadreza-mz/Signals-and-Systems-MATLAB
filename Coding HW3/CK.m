% Ck.m  -  Function file for Matlab_HW3
%
%
% This is a matlab function for producing the Fourier series
% coefficients for the periodic function for Matlab_HW3.
% Note that the function takes as input an integer 'k' and
% then returns Ck, the k'th Fourier Series coefficient. The
% function can also return a set of Ck values if the input
% argument 'k' is a vector.  For example, if passed the
% vector k = [0, 1, 2, 3], the function will return the
% vector [C0, C1, C2, C3].


function fct=Ck(k)

fct = zeros(size(k));
for m=1:length(k)
    if ~(mod(k(m),2) == 0)
        fct(m)=1./(j*k(m)*pi).*(cos(2*k(m)*pi/3)-cos(k(m)*pi/3));
    end
end


return;