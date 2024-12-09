function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = open_economy_nk1b.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 20
    T = [T; NaN(20 - size(T, 1), 1)];
end
T(17) = getPowerDeriv(T(1),(-params(4)),1);
T(18) = getPowerDeriv(T(13),1-params(24),1);
T(19) = params(9)*getPowerDeriv(y(16),1-params(8),1);
T(20) = getPowerDeriv(y(27),params(8),1);
end
