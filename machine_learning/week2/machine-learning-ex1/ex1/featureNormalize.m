function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

for iter = 1:size(X, 2)  
    % subtract mean from features set
    feature_mean = mean(X(:, iter));
    X(:, iter) = X(:, iter) - feature_mean;
    mu(:, iter) = feature_mean;

    % divide features set by standard deviation
    feature_dev = std(X(:, iter));
    X(:, iter) = X(:, iter) ./ feature_dev;
    sigma(:, iter) = feature_dev;
end

X_norm = X;

end
