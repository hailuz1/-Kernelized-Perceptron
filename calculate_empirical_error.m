
function [empirical_error, y_hat] = calculate_empirical_error(S_train ,S_pred, alpha_bar, kernel_type, kernel_param)
% Calculate Empirical Error
% Input: S - Sample set {(xi, yi)}, alpha_bar - Perceptron weights, kernel_type - 'rbf' or 'polynomial', kernel_param - kernel parameter
% Output: empirical_error - Fraction of misclassified samples

    m = size(S_pred, 1); % Number of samples
    K = compute_kernel_matrix(S_train, S_pred, kernel_type, kernel_param); % Compute the kernel matrix K kernel between the test points and a training points

    yi = S_pred(:, end);
    prediction = K * alpha_bar;
    y_hat = sign(prediction); % Predicted label as sign of the prediction

    misclassified_amount = sum(yi ~= y_hat); % Check if prediction is incorrect
    empirical_error = misclassified_amount/m; % Calculate empirical error as fraction of misclassified samples
end

