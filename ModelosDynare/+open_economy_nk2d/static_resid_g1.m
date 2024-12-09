function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = open_economy_nk2d.static_g1_tt(T, y, x, params);
    end
    residual = open_economy_nk2d.static_resid(T, y, x, params, false);
    g1       = open_economy_nk2d.static_g1(T, y, x, params, false);

end
