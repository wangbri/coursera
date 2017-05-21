%% exercise 1 : cost function

function cost = squaredErrorCost(A, b, x)
  cost = norm(A*x - b)^2; % default is 2-norm, Euclidean distance; equivalent to sqrt(sum((A*x - b).^2))
endfunction

%% exercise 2 : gradient descent

function A_inv_b = matrixInverseVector(A, b, x_init, alpha)
  A_inv_b = x_init;
  
  while norm(A*A_inv_b - b)^2 >= 10.^-6, % while cost function is > ~0
      A_inv_b = A_inv_b - alpha*(2*A*(A*A_inv_b - b));
  end;
endfunction

%{ 
In practice, we do not usually use gradient descent to solve for x such that Ax=b (we can compute x using other more efficient methods). 
However, the general "trick" of avoiding the need to compute or store A?1 is still applicable in many situations.
In fact, this is such a common operation that there is a built-in function in Octave/Matlab – the ? operator – to do this for you. 
In Octave/Matlab A?b will give you the value of A?1b. Of course, you can still also use the pinv function to compute A?1 if you prefer.
%}
