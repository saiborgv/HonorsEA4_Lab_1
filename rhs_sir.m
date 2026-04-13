function yp = rhs_sir(t, y)
    % Function yp solves the right hand side of equations 5 or 6.
    alpha = 1;
    beta = 2;

    yp = beta * y * ((1-alpha)/(beta-y));
end