function [residual, g1, g2, g3] = static(y, x, params)
    T = NaN(20, 1);
    if nargout <= 1
        residual = open_economy_nk3ib.static_resid(T, y, x, params, true);
    elseif nargout == 2
        [residual, g1] = open_economy_nk3ib.static_resid_g1(T, y, x, params, true);
    elseif nargout == 3
        [residual, g1, g2] = open_economy_nk3ib.static_resid_g1_g2(T, y, x, params, true);
    else
        [residual, g1, g2, g3] = open_economy_nk3ib.static_resid_g1_g2_g3(T, y, x, params, true);
    end
end
