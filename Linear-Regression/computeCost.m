function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y
%
% Last Update:	January 01, 2016
% Status:		Pass by Yugo Goutomo 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% X = [ones(m, 1), data(:,1)]; 	[m x n] % Add a column of ones to x
% y = [(data(:,2)];  			[m x 1] % Function result for each (m)
% theta = zeros(2, 1); 			[n x 1] % initialize fitting parameters
% predict = X * theta;          [m x n] x [n x 1] = [m x 1]

predict = X * theta;

errors = predict - y;

sqerrors = errors.^2;
% sqerrors = (predict -y).^2;

J = (1/(2*m)) * sum(sqerrors);

% sample code explanation
% A = [1 2 3]
% sum(A) = 6
% sum(A.^2) = 14
% sum(A^2)= errors, must be scalar or square matrix

% =========================================================================

end
