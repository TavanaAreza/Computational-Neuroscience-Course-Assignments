function y = taw_m(v)
    vRest = -60; % in mv, resting potential
    u = vRest - v;
    alpha_m = (u+25) ./ (exp(2.5+.1*u)-1)/10;
    beta_m = 4*exp(u/18);
    y = 1./(alpha_m + beta_m);
end