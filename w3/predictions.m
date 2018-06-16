function predictions = predict(W1,W2, X)

% Your code goes here.
z1 = X * W1;
z2 = 1 ./ (1+e.^(-z1));
predictions = z2 * W2;

endfunction