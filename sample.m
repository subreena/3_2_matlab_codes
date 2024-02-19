xn = [ 1 1 1 0 ];

xn_dft = dft_function(xn, length(xn));

xn_dft

xk = xn_dft;

xk_idft = idft_function(xk, length(xk));

xk_idft