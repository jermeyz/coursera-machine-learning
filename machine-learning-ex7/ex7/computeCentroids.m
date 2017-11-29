function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


%for k = 1:K
  % Find all points that have been put into cluster k
%  points = find(idx == k);
%  Xk = X(points, :);
%  centroids(k, :) = mean(Xk);
%end
%m = size(X,1)

%for i = 1:m
%    distance_array = zeros(1,K);
%    for j = 1:K
%        distance_array(1,j) = sqrt(sum(power((X(i,:)-centroids(j,:)),2)));
%    end
%    [d, d_idx] = min(distance_array);
%    idx(i,1) = d_idx;
%end

for i = 1:K
    c_i = idx==i;
    n_i = sum(c_i);
    c_i_matrix = repmat(c_i,1,n);
    X_c_i = X .* c_i_matrix;
    centroids(i,:) = sum(X_c_i) ./ n_i;
end




% =============================================================


end

