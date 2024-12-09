function [residual, g1, g2, g3] = dynamic(y, x, params, steady_state, it_)
    T = NaN(32, 1);
    if nargout <= 1
        residual = open_economy_nk1a.dynamic_resid(T, y, x, params, steady_state, it_, true);
    elseif nargout == 2
        [residual, g1] = open_economy_nk1a.dynamic_resid_g1(T, y, x, params, steady_state, it_, true);
    elseif nargout == 3
        [residual, g1, g2] = open_economy_nk1a.dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, true);
    else
        [residual, g1, g2, g3] = open_economy_nk1a.dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, true);
    end
end
