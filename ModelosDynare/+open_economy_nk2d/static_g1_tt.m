function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 20);

T = open_economy_nk2d.static_resid_tt(T, y, x, params);

T(17) = getPowerDeriv(T(1),(-params(4)),1);
T(18) = getPowerDeriv(T(13),1-params(24),1);
T(19) = params(9)*getPowerDeriv(y(16),1-params(8),1);
T(20) = getPowerDeriv(y(27),params(8),1);

end
