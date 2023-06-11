
function K = compute_kernel_matrix(S1, S2, kernel_type, kernel_param)
% Compute Kernel Matrix
% Input: S1, S2 - Sample set {(x_i, y_i)} and {(x'_i, y'_i)}, kernel_type - 'rbf' or 'polynomial', kernel_param - kernel parameter
% Output: K - Kernel matrix

    m = size(S1, 1); % Number of samples of the first 
    n = size(S2, 1); % Number of samples

    K = zeros(n, m); % Initialize the kernel matrix K

    for i = 1:n
        xi = S2(i, 1:end-1);
        for j = 1:m
            xj = S1(j, 1:end-1);
            if strcmp(kernel_type, 'rbf')
                K(i, j) = rbf_kernel(xi, xj, kernel_param); % Compute RBF kernel
            elseif strcmp(kernel_type, 'polynomial')
                K(i, j) = polynomial_kernel(xi, xj, kernel_param); % Compute Polynomial kernel
            end
        end
    end
end
