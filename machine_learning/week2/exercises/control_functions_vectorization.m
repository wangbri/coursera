%% control statements

v = zeros(10,1);
for i=1:10, 
    v(i) = 2^i;
end;
% Can also use "break" and "continue" inside for and while loops to control execution.

i = 1;
while i <= 5,
  v(i) = 100; 
  i = i+1;
end

i = 1;
while true, 
  v(i) = 999; 
  i = i+1;
  if i == 6,
    break;
  end;
end

if v(1)==1,
  disp('The value is one!');
elseif v(1)==2,
  disp('The value is two!');
else
  disp('The value is not one or two!');
end

%% functions

% Navigate to directory:
cd C:\Users\Brian\Desktop\coursera\machine_learning

% Call the function:
functionName(4)

% To add the path for the current session of Octave:
% addpath('C:\Users\Brian\Desktop\coursera\machine_learning')

% To remember the path for future sessions of Octave, after executing addpath above, also do:
% savepath

[a,b] = squareandCubeThisNo(3)

X = [1 1; 1 2; 1 3]
y = [1; 2; 3]
theta = [0;0];
j = costFunctionJ(X,y,theta)

%% vectorization

prediction = 0.0; % with loops, MATLAB vectors are index-1
for j = 1:n+1,
  prediction = prediction + theta(j) * x(j);
end

prediction1 = theta' * x % with vectorization, more efficient