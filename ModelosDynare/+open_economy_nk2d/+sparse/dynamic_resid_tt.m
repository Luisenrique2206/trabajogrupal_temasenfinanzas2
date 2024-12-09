function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 25
    T = [T; NaN(25 - size(T, 1), 1)];
end
T(1) = y(35)-params(6)/(1+params(5))*y(39)^(1+params(5));
T(2) = params(1)*y(77)/y(43);
T(3) = 1-params(16)/2*(y(42)/y(8)-1)^2;
T(4) = T(3)-y(42)*params(16)*(y(42)/y(8)-1)/y(8);
T(5) = y(75)*y(77)*params(1)*params(16)/y(43);
T(6) = y(76)/y(42)-1;
T(7) = T(5)*T(6);
T(8) = (y(76)/y(42))^2;
T(9) = y(6)^params(2);
T(10) = y(48)*T(9);
T(11) = y(39)^(1-params(2));
T(12) = y(77)/y(43)*y(85)*y(86)/(y(52)*y(51));
T(13) = T(12)*y(83);
T(14) = (1-params(9))*y(51)^(-params(8));
T(15) = y(61)^params(8);
T(16) = params(17)/2*(y(49)-params(13))^2;
T(17) = (y(53)-params(15))^2;
T(18) = params(9)*y(50)^(1-params(8));
T(19) = (y(45)/params(13))^params(19);
T(20) = y(54)^params(20);
T(21) = (y(55)/params(13))^params(21);
T(22) = T(19)*T(20)*T(21);
T(23) = T(22)^(1-params(24));
T(24) = (y(10)/params(14))^params(24);
T(25) = y(50)*y(53)/(y(54)*4);
end
