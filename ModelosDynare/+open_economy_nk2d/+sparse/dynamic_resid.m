function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(25, 1);
end
[T_order, T] = open_economy_nk2d.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(34, 1);
    residual(1) = (y(43)) - (T(1)^(-params(4)));
    residual(2) = (1) - (T(2)*y(44)/y(79));
    residual(3) = (1) - (T(2)*y(57)*y(84)/y(50)+params(18)*(y(53)-params(15)));
    residual(4) = (1) - (T(2)*(y(70)+(1-params(3))*y(75))/y(41));
    residual(5) = (params(6)*y(39)^params(5)) - (y(38));
    residual(6) = (y(40)) - ((1-params(3))*y(6)+y(42)*T(3));
    residual(7) = (1) - (y(41)*T(4)+T(7)*T(8));
    residual(8) = (y(52)) - (T(10)*T(11));
    residual(9) = (y(52)*(1-params(2))*y(46)) - (y(39)*y(38));
    residual(10) = (y(52)*params(2)*y(46)) - (y(6)*y(36));
    residual(11) = (y(49)*(y(49)-params(13))) - (params(1)*T(13)*(y(83)-params(13))+params(7)/params(17)*(y(46)/y(51)-(params(7)-1)/params(7)));
    residual(12) = (y(52)) - (T(14)*(y(35)+y(42))+y(47)+params(10)*y(56)*T(15)+y(52)*T(16));
    residual(13) = (y(54)) - (y(35)+y(42)+y(51)*y(47)-y(50)*y(53)+y(50)*y(23)*y(19)+T(16)*y(54)+y(50)*params(18)/2*T(17));
    residual(14) = (1) - ((1-params(9))*y(51)^(1-params(8))+T(18));
    residual(15) = (y(49)) - (y(51)/y(17)*y(45));
    residual(16) = (y(44)/params(14)) - (T(23)*T(24)*exp(x(3)));
    residual(17) = (log(y(48))) - ((1-params(22))*log(params(12))+params(22)*log(y(14))+x(1));
    residual(18) = (log(y(47))) - ((1-params(23))*log(params(11))+params(23)*log(y(13))+x(2));
    residual(19) = (log(y(56))) - (params(26)*log(y(22))+x(4));
    residual(20) = (y(57)) - ((1-params(25))/params(1)+y(23)*params(25)+x(5));
    residual(21) = (y(37)) - (y(44)/y(79));
    residual(22) = (y(50)/y(16)) - (y(55)/y(45));
    residual(23) = (y(54)) - (y(52)*y(51));
    residual(24) = (y(58)) - (y(59)-y(60));
    residual(25) = (y(59)) - (T(15)*y(56)*y(51)*params(10));
    residual(26) = (y(60)) - ((y(35)+y(42))*T(18));
    residual(27) = (y(61)) - (y(50)/y(51));
    residual(28) = (y(62)) - (log(y(35)));
    residual(29) = (y(63)) - (log(y(38)));
    residual(30) = (y(64)) - (log(y(39)));
    residual(31) = (y(65)) - (log(y(40)));
    residual(32) = (y(66)) - (log(y(42)));
    residual(33) = (y(67)) - (log(T(25)));
    residual(34) = (y(68)) - (y(54)-(T(16)*y(54)+y(35)+y(42)+y(51)*y(47)+y(58)));
end
