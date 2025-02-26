function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(25, 1);
lhs = NaN(34, 1);
rhs = NaN(34, 1);
T(1) = y(35)-params(6)/(1+params(5))*y(39)^(1+params(5));
T(2) = params(1)*y(77)/y(43);
T(3) = 1-params(16)/2*(y(42)/y(8)-1)^2;
T(4) = T(3)-y(42)*params(16)*(y(42)/y(8)-1)/y(8);
T(5) = y(75)*y(77)*params(1)*params(16)/y(43);
T(6) = y(76)/y(42)-1;
T(7) = T(5)*T(6);
T(8) = (y(76)/y(42))^2;
T(9) = y(6)^params(2);
T(10) = y(48)*T(9);
T(11) = y(39)^(1-params(2));
T(12) = y(77)/y(43)*y(85)*y(86)/(y(52)*y(51));
T(13) = T(12)*y(83);
T(14) = (1-params(9))*y(51)^(-params(8));
T(15) = y(61)^params(8);
T(16) = params(17)/2*(y(49)-params(13))^2;
T(17) = (y(53)-params(15))^2;
T(18) = params(9)*y(50)^(1-params(8));
T(19) = (y(45)/params(13))^params(19);
T(20) = y(54)^params(20);
T(21) = (y(55)/params(13))^params(21);
T(22) = T(19)*T(20)*T(21);
T(23) = T(22)^(1-params(24));
T(24) = (y(10)/params(14))^params(24);
T(25) = y(50)*y(53)/(y(54)*4);
lhs(1) = y(43);
rhs(1) = T(1)^(-params(4));
lhs(2) = 1;
rhs(2) = T(2)*y(44)/y(79);
lhs(3) = 1;
rhs(3) = T(2)*y(57)*y(84)/y(50)+params(18)*(y(53)-params(15));
lhs(4) = 1;
rhs(4) = T(2)*(y(70)+(1-params(3))*y(75))/y(41);
lhs(5) = params(6)*y(39)^params(5);
rhs(5) = y(38);
lhs(6) = y(40);
rhs(6) = (1-params(3))*y(6)+y(42)*T(3);
lhs(7) = 1;
rhs(7) = y(41)*T(4)+T(7)*T(8);
lhs(8) = y(52);
rhs(8) = T(10)*T(11);
lhs(9) = y(52)*(1-params(2))*y(46);
rhs(9) = y(39)*y(38);
lhs(10) = y(52)*params(2)*y(46);
rhs(10) = y(6)*y(36);
lhs(11) = y(49)*(y(49)-params(13));
rhs(11) = params(1)*T(13)*(y(83)-params(13))+params(7)/params(17)*(y(46)/y(51)-(params(7)-1)/params(7));
lhs(12) = y(52);
rhs(12) = T(14)*(y(35)+y(42))+y(47)+params(10)*y(56)*T(15)+y(52)*T(16);
lhs(13) = y(54);
rhs(13) = y(35)+y(42)+y(51)*y(47)-y(50)*y(53)+y(50)*y(23)*y(19)+T(16)*y(54)+y(50)*params(18)/2*T(17);
lhs(14) = 1;
rhs(14) = (1-params(9))*y(51)^(1-params(8))+T(18);
lhs(15) = y(49);
rhs(15) = y(51)/y(17)*y(45);
lhs(16) = y(44)/params(14);
rhs(16) = T(23)*T(24)*exp(x(3));
lhs(17) = log(y(48));
rhs(17) = (1-params(22))*log(params(12))+params(22)*log(y(14))+x(1);
lhs(18) = log(y(47));
rhs(18) = (1-params(23))*log(params(11))+params(23)*log(y(13))+x(2);
lhs(19) = log(y(56));
rhs(19) = params(26)*log(y(22))+x(4);
lhs(20) = y(57);
rhs(20) = (1-params(25))/params(1)+y(23)*params(25)+x(5);
lhs(21) = y(37);
rhs(21) = y(44)/y(79);
lhs(22) = y(50)/y(16);
rhs(22) = y(55)/y(45);
lhs(23) = y(54);
rhs(23) = y(52)*y(51);
lhs(24) = y(58);
rhs(24) = y(59)-y(60);
lhs(25) = y(59);
rhs(25) = T(15)*y(56)*y(51)*params(10);
lhs(26) = y(60);
rhs(26) = (y(35)+y(42))*T(18);
lhs(27) = y(61);
rhs(27) = y(50)/y(51);
lhs(28) = y(62);
rhs(28) = log(y(35));
lhs(29) = y(63);
rhs(29) = log(y(38));
lhs(30) = y(64);
rhs(30) = log(y(39));
lhs(31) = y(65);
rhs(31) = log(y(40));
lhs(32) = y(66);
rhs(32) = log(y(42));
lhs(33) = y(67);
rhs(33) = log(T(25));
lhs(34) = y(68);
rhs(34) = y(54)-(T(16)*y(54)+y(35)+y(42)+y(51)*y(47)+y(58));
end
