function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

row = size(z,1);  %storing the size of the row
column = size(z,2);  %storing the size o the column

for i = 1 : row
	for j=1:column
		g(i,j) = (1+e^-z(i,j))^-1;
	end
end

% ===========Alternative Solution ==========

%  g = 1 ./ (1 + exp(-z));

%===========================================

% =============================================================

end
