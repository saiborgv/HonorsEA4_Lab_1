function [t, y] = rk4step(rhs, t_in, y_in, opt)
    %This function uses the rk4step method to approximate the differential
    %equation. The parameter "rhs" is a function call which helps the rk4
    %method evaluate the differential equation, by solving the right hand
    %side.
    
    h = opt.timestep; % Time step size
    k1 = h * rhs(t_in, y_in);
    k2 = h * rhs(t_in + h/2, y_in + k1/2);
    k3 = h * rhs(t_in + h/2, y_in + k2/2);
    k4 = h * rhs(t_in + h, y_in + k3);
    t = t_in + h; 
    y = y_in + (k1 + 2*k2 + 2*k3 + k4) / 6;

end