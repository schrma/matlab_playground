function phi = regression_linear(x, y)
N = length(x);
A = [N, sum(x); sum(x), sum(x.*x)];
b = [sum(y); sum(x.*y)];
phi = A\b

end

