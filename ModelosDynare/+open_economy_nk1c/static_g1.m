function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = open_economy_nk1c.static_g1_tt(T, y, x, params);
end
g1 = zeros(34, 34);
g1(1,1)=(-T(17));
g1(1,5)=(-(T(17)*(-(params(6)/(1+params(5))*getPowerDeriv(y(5),1+params(5),1)))));
g1(1,9)=1;
g1(2,10)=(-(params(1)/y(11)));
g1(2,11)=(-((-(params(1)*y(10)))/(y(11)*y(11))));
g1(3,19)=(-params(18));
g1(3,23)=(-params(1));
g1(4,2)=(-(params(1)/y(7)));
g1(4,7)=(-((y(7)*params(1)*(1-params(3))-params(1)*(y(2)+(1-params(3))*y(7)))/(y(7)*y(7))));
g1(5,4)=(-1);
g1(5,5)=params(6)*getPowerDeriv(y(5),params(5),1);
g1(6,6)=1-(1-params(3));
g1(6,8)=(-1);
g1(7,7)=(-1);
g1(8,5)=(-(T(3)*getPowerDeriv(y(5),1-params(2),1)));
g1(8,6)=(-(T(4)*y(14)*getPowerDeriv(y(6),params(2),1)));
g1(8,14)=(-(T(2)*T(4)));
g1(8,18)=1;
g1(9,4)=(-y(5));
g1(9,5)=(-y(4));
g1(9,12)=y(18)*(1-params(2));
g1(9,18)=(1-params(2))*y(12);
g1(10,2)=(-y(6));
g1(10,6)=(-y(2));
g1(10,12)=y(18)*params(2);
g1(10,18)=params(2)*y(12);
g1(11,12)=(-(params(7)/params(17)*1/y(17)));
g1(11,15)=y(15)+y(15)-params(13)-params(1)*(y(15)+y(15)-params(13));
g1(11,17)=(-(params(7)/params(17)*(-y(12))/(y(17)*y(17))));
g1(12,1)=(-T(5));
g1(12,8)=(-T(5));
g1(12,13)=(-1);
g1(12,15)=(-(y(18)*params(17)/2*2*(y(15)-params(13))));
g1(12,17)=(-((y(1)+y(8))*(1-params(9))*getPowerDeriv(y(17),(-params(8)),1)));
g1(12,18)=1-T(7);
g1(12,22)=(-(params(10)*T(6)));
g1(12,27)=(-(params(10)*y(22)*T(20)));
g1(13,1)=(-1);
g1(13,8)=(-1);
g1(13,13)=(-y(17));
g1(13,15)=(-(y(20)*params(17)/2*2*(y(15)-params(13))));
g1(13,16)=(-(y(23)*y(19)-y(19)+T(8)*params(18)/2));
g1(13,17)=(-y(13));
g1(13,19)=(-(y(23)*y(16)-y(16)+y(16)*params(18)/2*2*(y(19)-params(15))));
g1(13,20)=1-T(7);
g1(13,23)=(-(y(16)*y(19)));
g1(14,16)=(-T(19));
g1(14,17)=(-((1-params(9))*getPowerDeriv(y(17),1-params(8),1)));
g1(15,11)=(-1);
g1(15,15)=1;
g1(16,10)=1/params(14)-exp(x(3))*T(14)*1/params(14)*getPowerDeriv(y(10)/params(14),params(24),1);
g1(16,11)=(-(exp(x(3))*T(15)*T(12)*T(11)*1/params(13)*getPowerDeriv(y(11)/params(13),params(19),1)*T(18)));
g1(16,20)=(-(exp(x(3))*T(15)*T(18)*T(12)*T(10)*getPowerDeriv(y(20),params(20),1)));
g1(16,21)=(-(exp(x(3))*T(15)*T(18)*T(10)*T(11)*1/params(13)*getPowerDeriv(y(21)/params(13),params(21),1)));
g1(17,14)=1/y(14)-params(22)*1/y(14);
g1(18,13)=1/y(13)-params(23)*1/y(13);
g1(19,22)=1/y(22)-params(26)*1/y(22);
g1(20,23)=1-params(25);
g1(21,3)=1;
g1(21,10)=(-(1/y(11)));
g1(21,11)=(-((-y(10))/(y(11)*y(11))));
g1(22,11)=(-((-y(21))/(y(11)*y(11))));
g1(22,21)=(-(1/y(11)));
g1(23,17)=(-y(18));
g1(23,18)=(-y(17));
g1(23,20)=1;
g1(24,24)=1;
g1(24,25)=(-1);
g1(24,26)=1;
g1(25,17)=(-(params(10)*y(22)*T(6)));
g1(25,22)=(-(T(6)*y(17)*params(10)));
g1(25,25)=1;
g1(25,27)=(-(y(22)*y(17)*params(10)*T(20)));
g1(26,1)=(-T(9));
g1(26,8)=(-T(9));
g1(26,16)=(-((y(1)+y(8))*T(19)));
g1(26,26)=1;
g1(27,16)=(-(1/y(17)));
g1(27,17)=(-((-y(16))/(y(17)*y(17))));
g1(27,27)=1;
g1(28,1)=(-(1/y(1)));
g1(28,28)=1;
g1(29,4)=(-(1/y(4)));
g1(29,29)=1;
g1(30,5)=(-(1/y(5)));
g1(30,30)=1;
g1(31,6)=(-(1/y(6)));
g1(31,31)=1;
g1(32,8)=(-(1/y(8)));
g1(32,32)=1;
g1(33,16)=(-(y(19)/(y(20)*4)/T(16)));
g1(33,19)=(-(y(16)/(y(20)*4)/T(16)));
g1(33,20)=(-((-(y(16)*y(19)*4))/(y(20)*4*y(20)*4)/T(16)));
g1(33,33)=1;
g1(34,1)=1;
g1(34,8)=1;
g1(34,13)=y(17);
g1(34,15)=y(20)*params(17)/2*2*(y(15)-params(13));
g1(34,17)=y(13);
g1(34,20)=(-(1-T(7)));
g1(34,24)=1;
g1(34,34)=1;

end
