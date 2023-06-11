% Polynomial Kernel
% Input: x, y - Input vectors, degree - Degree of the polynomial
% Output: kernel_value - Polynomial kernel value

function kernel_value = polynomial_kernel(x, y, degree)
    kernel_value = (x * y' + 1)^degree;
end