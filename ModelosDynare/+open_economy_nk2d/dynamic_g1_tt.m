function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 32);

T = open_economy_nk2d.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(26) = getPowerDeriv(T(1),(-params(4)),1);
T(27) = (-(params(16)/2*(-y(18))/(y(2)*y(2))*2*(y(18)/y(2)-1)));
T(28) = (-(params(16)/2*2*(y(18)/y(2)-1)*1/y(2)));
T(29) = (-(params(1)*y(48)))/(y(19)*y(19));
T(30) = getPowerDeriv(T(22),1-params(24),1);
T(31) = params(9)*getPowerDeriv(y(26),1-params(8),1);
T(32) = getPowerDeriv(y(37),params(8),1);

end
