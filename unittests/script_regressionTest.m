x = [0.8; 1.4; 2.7; 3.8; 4.8; 5];
y = [0.69; 1.0; 2.02; 2.39; 2.34; 2.83];
phi_lin = regression_linear(x,y)

N = length(x);
X = [ones(N,1), x];
Y = y;
phi_mult = least_minimum_square(X,Y)

tol = 1e-10;

assert(compare_array(phi_lin, phi_mult, tol), 'Results differ')