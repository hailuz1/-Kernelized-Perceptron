% RBF Kernel
% Input: x, y - Input vectors, sigma - Bandwidth parameter
% Output: kernel_value - RBF kernel value

function kernel_value = rbf_kernel(x, y, sigma)
    distance = norm(x - y);
    kernel_value = exp(-distance^2 / (2 * sigma^2));
end
