function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3)=log(y(22));
  residual(1)=(T(3))-(T(3)*params(26)+x(4));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(22)-params(26)*1/y(22);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
