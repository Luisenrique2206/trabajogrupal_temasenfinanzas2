function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 16);

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
