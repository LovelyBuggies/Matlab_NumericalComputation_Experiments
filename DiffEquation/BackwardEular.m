function [x, y] = BackwardEular(init, left, right, h)
%
% Backward Eular Method 
%
% Using backward Eular method to solve the initial problems.
%
% Param init is the initial point value.
% Param left is the integral floor.
% Param right is the integral ceil.
% Param h is the step length.
%
% Return x is the steps vector.
% Return y is the value of the function corresponding to each step.
%
% Created by Nino on 2018/6/26. Copyright ? Nino 2018.
%


% steps vector
x = left:h:right;

% initialize the value vector
y = zeros(size(x));
y(1) = init;

% calculate the value of function corresponding to each step
for i=1:length(x)-1
    % implicit calculate formula
    y(i+1) = y(i) + h*(y(i) - 2*x(i)/y(i));
    y(i+1) = y(i) + h*(y(i+1) - 2*x(i+1)/y(i+1));
end

% draw plot diagram
% plot(x,y)

end

