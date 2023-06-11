
function [alpha_bar] = kernelized_perceptron(S_train, T, kernel_type, kernel_param)
% Kernelized Perceptron Algorithm
% Input: S - Sample set {(xi, yi)}, T - Number of iterations
% Output: alpha_bar - Perceptron weights

    m = size(S_train, 1); % Number of samples
    alpha_bar = zeros(m, 1); % Initialize alpha_bar as a zero vector
    K = compute_kernel_matrix(S_train, S_train, kernel_type, kernel_param); % Compute the kernel matrix K

    for t = 1:T % Iterate T times
        for i = 1:m % Iterate over the samples
            yi = S_train(i, 3);
            y_hat = sign(alpha_bar' * K(:, i)); % Compute the predicted label
            alpha_bar(i) = alpha_bar(i) + (0.5 * (yi-y_hat));
        end
    end
end




