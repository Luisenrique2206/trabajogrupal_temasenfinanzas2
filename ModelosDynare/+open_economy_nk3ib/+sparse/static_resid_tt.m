function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 16
    T = [T; NaN(16 - size(T, 1), 1)];
end
T(1) = y(1)-params(6)/(1+params(5))*y(5)^(1+params(5));
T(2) = y(6)^params(2);
T(3) = y(14)*T(2);
T(4) = y(5)^(1-params(2));
T(5) = (1-params(9))*y(17)^(-params(8));
T(6) = y(27)^params(8);
T(7) = params(17)/2*(y(15)-params(13))^2;
T(8) = (y(19)-params(15))^2;
T(9) = params(9)*y(16)^(1-params(8));
T(10) = (y(11)/params(13))^params(19);
T(11) = y(20)^params(20);
T(12) = (y(21)/params(13))^params(21);
T(13) = T(10)*T(11)*T(12);
T(14) = T(13)^(1-params(24));
T(15) = (y(10)/params(14))^params(24);
T(16) = y(16)*y(19)/(y(20)*4);
end
