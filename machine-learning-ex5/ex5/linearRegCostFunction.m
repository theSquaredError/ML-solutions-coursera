function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%size(X)
%size(theta)
h = X*theta;
thetaT = theta;
thetaT(1) = 0;
J = sum((h-y).^2)/(2*m) + (lambda*sum(thetaT.^2))/(2*m);  %first part is the error part and the second part is the regularisation part


grad = (X'*(h-y))./m + (lambda/m).*thetaT; 

% =========================================================================

grad = grad(:);

end
