function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = open_economy_nk1a.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(34, 58);
g1(1,11)=(-T(26));
g1(1,15)=(-(T(26)*(-(params(6)/(1+params(5))*getPowerDeriv(y(15),1+params(5),1)))));
g1(1,19)=1;
g1(2,19)=(-(y(20)*T(29)/y(49)));
g1(2,48)=(-(y(20)*params(1)/y(19)/y(49)));
g1(2,20)=(-(T(2)/y(49)));
g1(2,49)=(-((-(T(2)*y(20)))/(y(49)*y(49))));
g1(3,19)=(-(y(51)*y(33)*T(29)/y(26)));
g1(3,48)=(-(y(51)*y(33)*params(1)/y(19)/y(26)));
g1(3,26)=(-((-(T(2)*y(33)*y(51)))/(y(26)*y(26))));
g1(3,51)=(-(T(2)*y(33)/y(26)));
g1(3,29)=(-params(18));
g1(3,33)=(-(T(2)*y(51)/y(26)));
g1(4,45)=(-(T(2)/y(17)));
g1(4,17)=(-((-(T(2)*(y(45)+(1-params(3))*y(46))))/(y(17)*y(17))));
g1(4,46)=(-(T(2)*(1-params(3))/y(17)));
g1(4,19)=(-((y(45)+(1-params(3))*y(46))*T(29)/y(17)));
g1(4,48)=(-((y(45)+(1-params(3))*y(46))*params(1)/y(19)/y(17)));
g1(5,14)=(-1);
g1(5,15)=params(6)*getPowerDeriv(y(15),params(5),1);
g1(6,1)=(-(1-params(3)));
g1(6,16)=1;
g1(6,2)=(-(y(18)*T(27)));
g1(6,18)=(-(T(3)+y(18)*T(28)));
g1(7,17)=(-T(4));
g1(7,46)=(-(T(8)*y(48)*params(1)*params(16)/y(19)*T(6)));
g1(7,2)=(-(y(17)*(T(27)-(y(2)*y(18)*params(16)*(-y(18))/(y(2)*y(2))-y(18)*params(16)*(y(18)/y(2)-1))/(y(2)*y(2)))));
g1(7,18)=(-(y(17)*(T(28)-(params(16)*(y(18)/y(2)-1)+y(18)*params(16)*1/y(2))/y(2))+T(8)*T(5)*(-y(47))/(y(18)*y(18))+T(7)*(-y(47))/(y(18)*y(18))*2*y(47)/y(18)));
g1(7,47)=(-(T(8)*T(5)*1/y(18)+T(7)*2*y(47)/y(18)*1/y(18)));
g1(7,19)=(-(T(8)*T(6)*y(46)*(-(y(48)*params(1)*params(16)))/(y(19)*y(19))));
g1(7,48)=(-(T(8)*T(6)*y(46)*params(1)*params(16)/y(19)));
g1(8,15)=(-(T(10)*getPowerDeriv(y(15),1-params(2),1)));
g1(8,1)=(-(T(11)*y(24)*getPowerDeriv(y(1),params(2),1)));
g1(8,24)=(-(T(9)*T(11)));
g1(8,28)=1;
g1(9,14)=(-y(15));
g1(9,15)=(-y(14));
g1(9,22)=y(28)*(1-params(2));
g1(9,28)=(1-params(2))*y(22);
g1(10,12)=(-y(1));
g1(10,1)=(-y(12));
g1(10,22)=y(28)*params(2);
g1(10,28)=params(2)*y(22);
g1(11,19)=(-(params(1)*(y(50)-params(13))*y(50)*y(53)*y(52)*(-y(48))/(y(19)*y(19))/(y(28)*y(27))));
g1(11,48)=(-(params(1)*(y(50)-params(13))*y(50)*y(53)*y(52)*1/y(19)/(y(28)*y(27))));
g1(11,22)=(-(params(7)/params(17)*1/y(27)));
g1(11,25)=y(25)+y(25)-params(13);
g1(11,50)=(-(params(1)*(T(13)+T(12)*(y(50)-params(13)))));
g1(11,27)=(-(params(1)*(y(50)-params(13))*y(50)*(-(y(28)*y(48)/y(19)*y(52)*y(53)))/(y(28)*y(27)*y(28)*y(27))+params(7)/params(17)*(-y(22))/(y(27)*y(27))));
g1(11,52)=(-(params(1)*(y(50)-params(13))*y(50)*y(48)/y(19)*y(53)/(y(28)*y(27))));
g1(11,28)=(-(params(1)*(y(50)-params(13))*y(50)*(-(y(48)/y(19)*y(52)*y(53)*y(27)))/(y(28)*y(27)*y(28)*y(27))));
g1(11,53)=(-(params(1)*(y(50)-params(13))*y(50)*y(48)/y(19)*y(52)/(y(28)*y(27))));
g1(12,11)=(-T(14));
g1(12,18)=(-T(14));
g1(12,23)=(-1);
g1(12,25)=(-(y(28)*params(17)/2*2*(y(25)-params(13))));
g1(12,27)=(-((y(11)+y(18))*(1-params(9))*getPowerDeriv(y(27),(-params(8)),1)));
g1(12,28)=1-T(16);
g1(12,32)=(-(params(10)*T(15)));
g1(12,37)=(-(params(10)*y(32)*T(32)));
g1(13,11)=(-1);
g1(13,18)=(-1);
g1(13,23)=(-y(27));
g1(13,25)=(-(y(30)*params(17)/2*2*(y(25)-params(13))));
g1(13,26)=(-(y(10)*y(8)-y(29)+T(17)*params(18)/2));
g1(13,27)=(-y(23));
g1(13,8)=(-(y(26)*y(10)));
g1(13,29)=(-(y(26)*params(18)/2*2*(y(29)-params(15))-y(26)));
g1(13,30)=1-T(16);
g1(13,10)=(-(y(26)*y(8)));
g1(14,26)=(-T(31));
g1(14,27)=(-((1-params(9))*getPowerDeriv(y(27),1-params(8),1)));
g1(15,21)=(-(y(27)/y(7)));
g1(15,25)=1;
g1(15,7)=(-(y(21)*(-y(27))/(y(7)*y(7))));
g1(15,27)=(-(y(21)*1/y(7)));
g1(16,3)=(-(exp(x(it_, 3))*T(23)*1/params(14)*getPowerDeriv(y(3)/params(14),params(24),1)));
g1(16,20)=1/params(14);
g1(16,21)=(-(exp(x(it_, 3))*T(24)*T(21)*T(20)*1/params(13)*getPowerDeriv(y(21)/params(13),params(19),1)*T(30)));
g1(16,30)=(-(exp(x(it_, 3))*T(24)*T(30)*T(21)*T(19)*getPowerDeriv(y(30),params(20),1)));
g1(16,31)=(-(exp(x(it_, 3))*T(24)*T(30)*T(19)*T(20)*1/params(13)*getPowerDeriv(y(31)/params(13),params(21),1)));
g1(16,56)=(-(T(23)*T(24)*exp(x(it_, 3))));
g1(17,5)=(-(params(22)*1/y(5)));
g1(17,24)=1/y(24);
g1(17,54)=(-1);
g1(18,4)=(-(params(23)*1/y(4)));
g1(18,23)=1/y(23);
g1(18,55)=(-1);
g1(19,9)=(-(params(26)*1/y(9)));
g1(19,32)=1/y(32);
g1(19,57)=(-1);
g1(20,10)=(-params(25));
g1(20,33)=1;
g1(20,58)=(-1);
g1(21,13)=1;
g1(21,20)=(-(1/y(49)));
g1(21,49)=(-((-y(20))/(y(49)*y(49))));
g1(22,21)=(-((-y(31))/(y(21)*y(21))));
g1(22,6)=(-y(26))/(y(6)*y(6));
g1(22,26)=1/y(6);
g1(22,31)=(-(1/y(21)));
g1(23,27)=(-y(28));
g1(23,28)=(-y(27));
g1(23,30)=1;
g1(24,34)=1;
g1(24,35)=(-1);
g1(24,36)=1;
g1(25,27)=(-(params(10)*y(32)*T(15)));
g1(25,32)=(-(T(15)*y(27)*params(10)));
g1(25,35)=1;
g1(25,37)=(-(y(32)*y(27)*params(10)*T(32)));
g1(26,11)=(-T(18));
g1(26,18)=(-T(18));
g1(26,26)=(-((y(11)+y(18))*T(31)));
g1(26,36)=1;
g1(27,26)=(-(1/y(27)));
g1(27,27)=(-((-y(26))/(y(27)*y(27))));
g1(27,37)=1;
g1(28,11)=(-(1/y(11)));
g1(28,38)=1;
g1(29,14)=(-(1/y(14)));
g1(29,39)=1;
g1(30,15)=(-(1/y(15)));
g1(30,40)=1;
g1(31,16)=(-(1/y(16)));
g1(31,41)=1;
g1(32,18)=(-(1/y(18)));
g1(32,42)=1;
g1(33,26)=(-(y(29)/(y(30)*4)/T(25)));
g1(33,29)=(-(y(26)/(y(30)*4)/T(25)));
g1(33,30)=(-((-(y(26)*y(29)*4))/(y(30)*4*y(30)*4)/T(25)));
g1(33,43)=1;
g1(34,11)=1;
g1(34,18)=1;
g1(34,23)=y(27);
g1(34,25)=y(30)*params(17)/2*2*(y(25)-params(13));
g1(34,27)=y(23);
g1(34,30)=(-(1-T(16)));
g1(34,34)=1;
g1(34,44)=1;

end
