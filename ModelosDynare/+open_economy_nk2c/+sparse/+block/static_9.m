function [y, T] = static_9(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(26)=(y(1)+y(8))*T(10);
  y(32)=log(y(8));
  y(31)=log(y(6));
  y(25)=T(7)*y(22)*y(17)*params(10);
  y(24)=y(25)-y(26);
  y(33)=log(y(16)*y(19)/(y(20)*4));
  y(34)=y(20)-(T(8)*y(20)+y(1)+y(8)+y(17)*y(13)+y(24));
  y(30)=log(y(5));
  y(29)=log(y(4));
  y(28)=log(y(1));
  y(3)=y(10)/y(11);
  y(9)=(y(1)-params(6)/(1+params(5))*y(5)^(1+params(5)))^(-params(4));
end
