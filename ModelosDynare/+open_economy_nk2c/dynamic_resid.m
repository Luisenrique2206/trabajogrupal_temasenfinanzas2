function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = open_economy_nk2c.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(34, 1);
    residual(1) = (y(19)) - (T(1)^(-params(4)));
    residual(2) = (1) - (T(2)*y(20)/y(49));
    residual(3) = (1) - (T(2)*y(33)*y(51)/y(26)+params(18)*(y(29)-params(15)));
    residual(4) = (1) - (T(2)*(y(45)+(1-params(3))*y(46))/y(17));
    residual(5) = (params(6)*y(15)^params(5)) - (y(14));
    residual(6) = (y(16)) - ((1-params(3))*y(1)+y(18)*T(3));
    residual(7) = (1) - (y(17)*T(4)+T(7)*T(8));
    residual(8) = (y(28)) - (T(10)*T(11));
    residual(9) = (y(28)*(1-params(2))*y(22)) - (y(15)*y(14));
    residual(10) = (y(28)*params(2)*y(22)) - (y(1)*y(12));
    residual(11) = (y(25)*(y(25)-params(13))) - (params(1)*T(13)*(y(50)-params(13))+params(7)/params(17)*(y(22)/y(27)-(params(7)-1)/params(7)));
    residual(12) = (y(28)) - (T(14)*(y(11)+y(18))+y(23)+params(10)*y(32)*T(15)+y(28)*T(16));
    residual(13) = (y(30)) - (y(11)+y(18)+y(27)*y(23)-y(26)*y(29)+y(26)*y(10)*y(8)+T(16)*y(30)+y(26)*params(18)/2*T(17));
    residual(14) = (1) - ((1-params(9))*y(27)^(1-params(8))+T(18));
    residual(15) = (y(25)) - (y(27)/y(7)*y(21));
    residual(16) = (y(20)/params(14)) - (T(23)*T(24)*exp(x(it_, 3)));
    residual(17) = (log(y(24))) - ((1-params(22))*log(params(12))+params(22)*log(y(5))+x(it_, 1));
    residual(18) = (log(y(23))) - ((1-params(23))*log(params(11))+params(23)*log(y(4))+x(it_, 2));
    residual(19) = (log(y(32))) - (params(26)*log(y(9))+x(it_, 4));
    residual(20) = (y(33)) - ((1-params(25))/params(1)+y(10)*params(25)+x(it_, 5));
    residual(21) = (y(13)) - (y(20)/y(49));
    residual(22) = (y(26)/y(6)) - (y(31)/y(21));
    residual(23) = (y(30)) - (y(28)*y(27));
    residual(24) = (y(34)) - (y(35)-y(36));
    residual(25) = (y(35)) - (T(15)*y(32)*y(27)*params(10));
    residual(26) = (y(36)) - ((y(11)+y(18))*T(18));
    residual(27) = (y(37)) - (y(26)/y(27));
    residual(28) = (y(38)) - (log(y(11)));
    residual(29) = (y(39)) - (log(y(14)));
    residual(30) = (y(40)) - (log(y(15)));
    residual(31) = (y(41)) - (log(y(16)));
    residual(32) = (y(42)) - (log(y(18)));
    residual(33) = (y(43)) - (log(T(25)));
    residual(34) = (y(44)) - (y(30)-(T(16)*y(30)+y(11)+y(18)+y(27)*y(23)+y(34)));

end
