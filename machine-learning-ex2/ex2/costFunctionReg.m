function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
sig=sigmoid(X*theta);
log1 = log(sig);
log2 = log(1 .- sig);
J = (-sum(y.*log1)-sum((1 .- y) .*log2))/m + (lambda/(2*m))*(theta(2:size(theta))'*theta(2:(size(theta))));

reg=(lambda/m)*theta;
reg(1,1)=0;
grad = (X'*(sig-y))/m+reg;


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
