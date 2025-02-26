function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(16, 1);
end
[T_order, T] = open_economy_nk1a.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(34, 1);
    residual(1) = (y(9)) - (T(1)^(-params(4)));
    residual(2) = (1) - (params(1)*y(10)/y(11));
    residual(3) = (1) - (params(1)*y(23)+params(18)*(y(19)-params(15)));
    residual(4) = (1) - (params(1)*(y(2)+(1-params(3))*y(7))/y(7));
    residual(5) = (params(6)*y(5)^params(5)) - (y(4));
    residual(6) = (y(6)) - ((1-params(3))*y(6)+y(8));
    residual(7) = (1) - (y(7));
    residual(8) = (y(18)) - (T(3)*T(4));
    residual(9) = (y(18)*(1-params(2))*y(12)) - (y(5)*y(4));
    residual(10) = (y(18)*params(2)*y(12)) - (y(2)*y(6));
    residual(11) = (y(15)*(y(15)-params(13))) - (params(1)*y(15)*(y(15)-params(13))+params(7)/params(17)*(y(12)/y(17)-(params(7)-1)/params(7)));
    residual(12) = (y(18)) - (T(5)*(y(1)+y(8))+y(13)+params(10)*y(22)*T(6)+y(18)*T(7));
    residual(13) = (y(20)) - (y(1)+y(8)+y(17)*y(13)-y(16)*y(19)+y(19)*y(23)*y(16)+T(7)*y(20)+y(16)*params(18)/2*T(8));
    residual(14) = (1) - ((1-params(9))*y(17)^(1-params(8))+T(9));
    residual(15) = (y(15)) - (y(11));
    residual(16) = (y(10)/params(14)) - (T(14)*T(15)*exp(x(3)));
    residual(17) = (log(y(14))) - ((1-params(22))*log(params(12))+log(y(14))*params(22)+x(1));
    residual(18) = (log(y(13))) - ((1-params(23))*log(params(11))+log(y(13))*params(23)+x(2));
    residual(19) = (log(y(22))) - (log(y(22))*params(26)+x(4));
    residual(20) = (y(23)) - ((1-params(25))/params(1)+y(23)*params(25)+x(5));
    residual(21) = (y(3)) - (y(10)/y(11));
    residual(22) = (1) - (y(21)/y(11));
    residual(23) = (y(20)) - (y(18)*y(17));
    residual(24) = (y(24)) - (y(25)-y(26));
    residual(25) = (y(25)) - (T(6)*y(22)*y(17)*params(10));
    residual(26) = (y(26)) - ((y(1)+y(8))*T(9));
    residual(27) = (y(27)) - (y(16)/y(17));
    residual(28) = (y(28)) - (log(y(1)));
    residual(29) = (y(29)) - (log(y(4)));
    residual(30) = (y(30)) - (log(y(5)));
    residual(31) = (y(31)) - (log(y(6)));
    residual(32) = (y(32)) - (log(y(8)));
    residual(33) = (y(33)) - (log(T(16)));
    residual(34) = (y(34)) - (y(20)-(T(7)*y(20)+y(1)+y(8)+y(17)*y(13)+y(24)));
end
