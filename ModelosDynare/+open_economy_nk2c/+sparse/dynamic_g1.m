function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(32, 1);
end
[T_order, T] = open_economy_nk2c.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(140, 1);
g1_v(1)=(-(1-params(3)));
g1_v(2)=(-(T(11)*y(48)*getPowerDeriv(y(6),params(2),1)));
g1_v(3)=(-y(36));
g1_v(4)=(-(y(42)*T(27)));
g1_v(5)=(-(y(41)*(T(27)-(y(8)*y(42)*params(16)*(-y(42))/(y(8)*y(8))-y(42)*params(16)*(y(42)/y(8)-1))/(y(8)*y(8)))));
g1_v(6)=(-(exp(x(3))*T(23)*1/params(14)*getPowerDeriv(y(10)/params(14),params(24),1)));
g1_v(7)=(-(params(23)*1/y(13)));
g1_v(8)=(-(params(22)*1/y(14)));
g1_v(9)=(-y(50))/(y(16)*y(16));
g1_v(10)=(-(y(45)*(-y(51))/(y(17)*y(17))));
g1_v(11)=(-(y(50)*y(23)));
g1_v(12)=(-(params(26)*1/y(22)));
g1_v(13)=(-(y(50)*y(19)));
g1_v(14)=(-params(25));
g1_v(15)=(-T(26));
g1_v(16)=(-T(14));
g1_v(17)=(-1);
g1_v(18)=(-T(18));
g1_v(19)=(-(1/y(35)));
g1_v(20)=1;
g1_v(21)=(-y(6));
g1_v(22)=1;
g1_v(23)=(-1);
g1_v(24)=(-y(39));
g1_v(25)=(-(1/y(38)));
g1_v(26)=(-(T(26)*(-(params(6)/(1+params(5))*getPowerDeriv(y(39),1+params(5),1)))));
g1_v(27)=params(6)*getPowerDeriv(y(39),params(5),1);
g1_v(28)=(-(T(10)*getPowerDeriv(y(39),1-params(2),1)));
g1_v(29)=(-y(38));
g1_v(30)=(-(1/y(39)));
g1_v(31)=1;
g1_v(32)=(-(1/y(40)));
g1_v(33)=(-((-(T(2)*(y(70)+(1-params(3))*y(75))))/(y(41)*y(41))));
g1_v(34)=(-T(4));
g1_v(35)=(-(T(3)+y(42)*T(28)));
g1_v(36)=(-(y(41)*(T(28)-(params(16)*(y(42)/y(8)-1)+y(42)*params(16)*1/y(8))/y(8))+T(8)*T(5)*(-y(76))/(y(42)*y(42))+T(7)*(-y(76))/(y(42)*y(42))*2*y(76)/y(42)));
g1_v(37)=(-T(14));
g1_v(38)=(-1);
g1_v(39)=(-T(18));
g1_v(40)=(-(1/y(42)));
g1_v(41)=1;
g1_v(42)=1;
g1_v(43)=(-(y(44)*T(29)/y(79)));
g1_v(44)=(-(y(84)*y(57)*T(29)/y(50)));
g1_v(45)=(-((y(70)+(1-params(3))*y(75))*T(29)/y(41)));
g1_v(46)=(-(T(8)*T(6)*y(75)*(-(y(77)*params(1)*params(16)))/(y(43)*y(43))));
g1_v(47)=(-(params(1)*(y(83)-params(13))*y(83)*y(86)*y(85)*(-y(77))/(y(43)*y(43))/(y(52)*y(51))));
g1_v(48)=(-(T(2)/y(79)));
g1_v(49)=1/params(14);
g1_v(50)=(-(1/y(79)));
g1_v(51)=(-(y(51)/y(17)));
g1_v(52)=(-(exp(x(3))*T(24)*T(21)*T(20)*1/params(13)*getPowerDeriv(y(45)/params(13),params(19),1)*T(30)));
g1_v(53)=(-((-y(55))/(y(45)*y(45))));
g1_v(54)=y(52)*(1-params(2));
g1_v(55)=y(52)*params(2);
g1_v(56)=(-(params(7)/params(17)*1/y(51)));
g1_v(57)=(-1);
g1_v(58)=(-y(51));
g1_v(59)=1/y(47);
g1_v(60)=y(51);
g1_v(61)=(-(T(9)*T(11)));
g1_v(62)=1/y(48);
g1_v(63)=y(49)+y(49)-params(13);
g1_v(64)=(-(y(52)*params(17)/2*2*(y(49)-params(13))));
g1_v(65)=(-(y(54)*params(17)/2*2*(y(49)-params(13))));
g1_v(66)=1;
g1_v(67)=y(54)*params(17)/2*2*(y(49)-params(13));
g1_v(68)=(-((-(T(2)*y(57)*y(84)))/(y(50)*y(50))));
g1_v(69)=(-(y(23)*y(19)-y(53)+T(17)*params(18)/2));
g1_v(70)=(-T(31));
g1_v(71)=1/y(16);
g1_v(72)=(-((y(35)+y(42))*T(31)));
g1_v(73)=(-(1/y(51)));
g1_v(74)=(-(y(53)/(y(54)*4)/T(25)));
g1_v(75)=(-(params(1)*(y(83)-params(13))*y(83)*(-(y(52)*y(77)/y(43)*y(85)*y(86)))/(y(52)*y(51)*y(52)*y(51))+params(7)/params(17)*(-y(46))/(y(51)*y(51))));
g1_v(76)=(-((y(35)+y(42))*(1-params(9))*getPowerDeriv(y(51),(-params(8)),1)));
g1_v(77)=(-y(47));
g1_v(78)=(-((1-params(9))*getPowerDeriv(y(51),1-params(8),1)));
g1_v(79)=(-(y(45)*1/y(17)));
g1_v(80)=(-y(52));
g1_v(81)=(-(params(10)*y(56)*T(15)));
g1_v(82)=(-((-y(50))/(y(51)*y(51))));
g1_v(83)=y(47);
g1_v(84)=1;
g1_v(85)=(1-params(2))*y(46);
g1_v(86)=params(2)*y(46);
g1_v(87)=(-(params(1)*(y(83)-params(13))*y(83)*(-(y(77)/y(43)*y(85)*y(86)*y(51)))/(y(52)*y(51)*y(52)*y(51))));
g1_v(88)=1-T(16);
g1_v(89)=(-y(51));
g1_v(90)=(-params(18));
g1_v(91)=(-(y(50)*params(18)/2*2*(y(53)-params(15))-y(50)));
g1_v(92)=(-(y(50)/(y(54)*4)/T(25)));
g1_v(93)=1-T(16);
g1_v(94)=(-(exp(x(3))*T(24)*T(30)*T(21)*T(19)*getPowerDeriv(y(54),params(20),1)));
g1_v(95)=1;
g1_v(96)=(-((-(y(50)*y(53)*4))/(y(54)*4*y(54)*4)/T(25)));
g1_v(97)=(-(1-T(16)));
g1_v(98)=(-(exp(x(3))*T(24)*T(30)*T(19)*T(20)*1/params(13)*getPowerDeriv(y(55)/params(13),params(21),1)));
g1_v(99)=(-(1/y(45)));
g1_v(100)=(-(params(10)*T(15)));
g1_v(101)=1/y(56);
g1_v(102)=(-(T(15)*y(51)*params(10)));
g1_v(103)=(-(T(2)*y(84)/y(50)));
g1_v(104)=1;
g1_v(105)=1;
g1_v(106)=1;
g1_v(107)=(-1);
g1_v(108)=1;
g1_v(109)=1;
g1_v(110)=1;
g1_v(111)=(-(params(10)*y(56)*T(32)));
g1_v(112)=(-(y(56)*y(51)*params(10)*T(32)));
g1_v(113)=1;
g1_v(114)=1;
g1_v(115)=1;
g1_v(116)=1;
g1_v(117)=1;
g1_v(118)=1;
g1_v(119)=1;
g1_v(120)=1;
g1_v(121)=(-(T(2)/y(41)));
g1_v(122)=(-(T(2)*(1-params(3))/y(41)));
g1_v(123)=(-(T(8)*y(77)*params(1)*params(16)/y(43)*T(6)));
g1_v(124)=(-(T(8)*T(5)*1/y(42)+T(7)*2*y(76)/y(42)*1/y(42)));
g1_v(125)=(-(y(44)*params(1)/y(43)/y(79)));
g1_v(126)=(-(y(84)*y(57)*params(1)/y(43)/y(50)));
g1_v(127)=(-((y(70)+(1-params(3))*y(75))*params(1)/y(43)/y(41)));
g1_v(128)=(-(T(8)*T(6)*y(75)*params(1)*params(16)/y(43)));
g1_v(129)=(-(params(1)*(y(83)-params(13))*y(83)*y(86)*y(85)*1/y(43)/(y(52)*y(51))));
g1_v(130)=(-((-(T(2)*y(44)))/(y(79)*y(79))));
g1_v(131)=(-((-y(44))/(y(79)*y(79))));
g1_v(132)=(-(params(1)*(T(13)+T(12)*(y(83)-params(13)))));
g1_v(133)=(-(T(2)*y(57)/y(50)));
g1_v(134)=(-(params(1)*(y(83)-params(13))*y(83)*y(77)/y(43)*y(86)/(y(52)*y(51))));
g1_v(135)=(-(params(1)*(y(83)-params(13))*y(83)*y(77)/y(43)*y(85)/(y(52)*y(51))));
g1_v(136)=(-1);
g1_v(137)=(-1);
g1_v(138)=(-(T(23)*T(24)*exp(x(3))));
g1_v(139)=(-1);
g1_v(140)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 34, 107);
end
