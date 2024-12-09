function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 25);

T(1) = y(11)-params(6)/(1+params(5))*y(15)^(1+params(5));
T(2) = params(1)*y(48)/y(19);
T(3) = 1-params(16)/2*(y(18)/y(2)-1)^2;
T(4) = T(3)-y(18)*params(16)*(y(18)/y(2)-1)/y(2);
T(5) = y(46)*y(48)*params(1)*params(16)/y(19);
T(6) = y(47)/y(18)-1;
T(7) = T(5)*T(6);
T(8) = (y(47)/y(18))^2;
T(9) = y(1)^params(2);
T(10) = y(24)*T(9);
T(11) = y(15)^(1-params(2));
T(12) = y(48)/y(19)*y(52)*y(53)/(y(28)*y(27));
T(13) = T(12)*y(50);
T(14) = (1-params(9))*y(27)^(-params(8));
T(15) = y(37)^params(8);
T(16) = params(17)/2*(y(25)-params(13))^2;
T(17) = (y(29)-params(15))^2;
T(18) = params(9)*y(26)^(1-params(8));
T(19) = (y(21)/params(13))^params(19);
T(20) = y(30)^params(20);
T(21) = (y(31)/params(13))^params(21);
T(22) = T(19)*T(20)*T(21);
T(23) = T(22)^(1-params(24));
T(24) = (y(3)/params(14))^params(24);
T(25) = y(26)*y(29)/(y(30)*4);

end
