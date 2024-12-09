function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = open_economy_nk1b.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 32
    T = [T; NaN(32 - size(T, 1), 1)];
end
T(26) = getPowerDeriv(T(1),(-params(4)),1);
T(27) = (-(params(16)/2*(-y(42))/(y(8)*y(8))*2*(y(42)/y(8)-1)));
T(28) = (-(params(16)/2*2*(y(42)/y(8)-1)*1/y(8)));
T(29) = (-(params(1)*y(77)))/(y(43)*y(43));
T(30) = getPowerDeriv(T(22),1-params(24),1);
T(31) = params(9)*getPowerDeriv(y(50),1-params(8),1);
T(32) = getPowerDeriv(y(61),params(8),1);
end
