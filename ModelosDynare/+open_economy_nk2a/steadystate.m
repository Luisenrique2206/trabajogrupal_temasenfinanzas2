function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(11)=1;
    ys_(15)=1;
    ys_(19)=params(15);
    ys_(18)=1;
    ys_(17)=1;
    ys_(16)=1;
    ys_(5)=0.3333333333333333;
    ys_(3)=1/params(1);
    ys_(10)=ys_(11)/params(1);
    ys_(7)=1;
    ys_(2)=1/params(1)-(1-params(3));
    ys_(12)=(params(7)-1)/params(7);
    ys_(6)=ys_(18)*ys_(12)*params(2)/ys_(2);
    ys_(4)=ys_(18)*ys_(12)*(1-params(2))/ys_(5);
    ys_(8)=params(3)*ys_(6);
    ys_(13)=params(11);
    ys_(1)=ys_(18)-ys_(8)-ys_(13)-ys_(19)*(1/params(1)-1);
    ys_(9)=(ys_(1)-params(6)/(1+params(5))*ys_(5)^(1+params(5)))^(-params(4));
    ys_(14)=params(12);
    ys_(23)=1/params(1);
    ys_(22)=1;
    ys_(21)=1;
    ys_(20)=ys_(18)*ys_(17);
    ys_(27)=ys_(16)/ys_(17);
    ys_(25)=ys_(22)*ys_(17)*params(10)*ys_(27)^params(8);
    ys_(26)=params(9)*ys_(16)^(1-params(8))*(ys_(8)+ys_(1));
    ys_(24)=ys_(25)-ys_(26)+ys_(16)*params(18)/2*(ys_(19)-params(15))^2;
    ys_(28)=log(ys_(1));
    ys_(29)=log(ys_(4));
    ys_(30)=log(ys_(5));
    ys_(31)=log(ys_(6));
    ys_(32)=log(ys_(8));
    ys_(33)=log(ys_(19)*ys_(16)/(ys_(20)*4));
    ys_(34)=0;
    % Auxiliary equations
end
