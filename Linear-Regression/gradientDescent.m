function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
%
% Last Update:	January 01, 2016
% Status:		Pass by Yugo Goutomo

% Initialize some useful values
m = length(y);	% number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

	% ====================== YOUR CODE HERE ======================
	% Instructions: Perform a single gradient step on the parameter vector
	%               theta. 
	%
	% Hint: While debugging, it can be useful to print out the values
	%       of the cost function (computeCost) and gradient here.
	%
	% X = [ones(m, 1), data(:,1)]; 					[m x n] % Add a column of ones to x
	% y = [(data(:,2)];  							[m x 1] % Function result for each (m)
	% theta = zeros(2, 1); 							[n x 1] % initialize fitting parameters
	% errors_vectors = ((X * theta) - y)			[[m x n] x [n x 1]] - [m x 1] = [m x 1]
	% gradient_theta = X.' * errors_vectors			[[n x m] x [m x 1] = [n x 1]
	% theta = theta - ((alpha/m) * gradient_theta)	[n x 1] - [n x 1] = [n x 1]
	
	errors_vectors = ((X * theta) - y);
	gradient_theta = (X.') * ((X * theta) - y);
	theta = theta - ((alpha/m) * gradient_theta);
	
	% ============================================================

	% Save the cost J in every iteration    
	J_history(iter) = computeCost(X, y, theta);

end

end
