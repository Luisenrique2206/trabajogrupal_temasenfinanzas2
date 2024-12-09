function [residual, g1] = dynamic_resid_g1(T, y, x, params, steady_state, it_, T_flag)
% function [residual, g1] = dynamic_resid_g1(T, y, x, params, steady_state, it_, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = open_economy_nk3ib.dynamic_g1_tt(T, y, x, params, steady_state, it_);
    end
    residual = open_economy_nk3ib.dynamic_resid(T, y, x, params, steady_state, it_, false);
    g1       = open_economy_nk3ib.dynamic_g1(T, y, x, params, steady_state, it_, false);

end
