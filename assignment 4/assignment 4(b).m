% Define the piecewise function x(t)
syms t w

% Define the segments of the piecewise function
x1 = 2; % for -1 <= t < 0
x2 = 1 - 2*t; % for 0 <= t < 1
x3 = 2*t - 3; % for 1 <= t < 2
x4 = 2; % for 2 <= t < 3

% Compute the Fourier Transform for each segment
X1 = int(x1 * exp(-1j*w*t), t, -1, 0);
X2 = int(x2 * exp(-1j*w*t), t, 0, 1);
X3 = int(x3 * exp(-1j*w*t), t, 1, 2);
X4 = int(x4 * exp(-1j*w*t), t, 2, 3);

% Sum the results to get the total Fourier Transform
Xw = X1 + X2 + X3 + X4;

% Display the symbolic Fourier Transform for debugging
disp('Symbolic Fourier Transform X(w):');
disp(Xw);

% Create a function handle for numerical evaluation
Xw_func = matlabFunction(Xw, 'Vars', w);

% Define the range for omega
omega = linspace(-10, 10, 1000);

% Evaluate the Fourier Transform
Xw_vals = Xw_func(omega);

% Plot the frequency domain signal X(jw)
figure;
plot(omega, abs(Xw_vals), 'LineWidth', 2);
title('Frequency Domain Signal |X(j\omega)|');
xlabel('\omega');
ylabel('|X(j\omega)|');
grid on;

% Plot the magnitude spectrum
figure;
plot(omega, abs(Xw_vals), 'LineWidth', 2);
title('Magnitude Spectrum |X(j\omega)|');
xlabel('\omega');
ylabel('|X(j\omega)|');
grid on;

% Plot the phase spectrum
figure;
plot(omega, angle(Xw_vals), 'LineWidth', 2);
title('Phase Spectrum \angle X(j\omega)');
xlabel('\omega');
ylabel('\angle X(j\omega)');
grid on;

% Inverse Fourier transform of the real part of X(jw)
Xw_real_func = matlabFunction(real(Xw), 'Vars', w);
Xw_real_vals = Xw_real_func(omega);

% The inverse Fourier transform calculation should use the inverse 
% of the discrete Fourier Transform
x_inv_real_vals = ifft(ifftshift(Xw_real_vals));

% Define time range for inverse transform result
t_vals = linspace(-3, 3, length(x_inv_real_vals));

% Plot the inverse Fourier transform of the real part of X(jw)
figure;
plot(t_vals, real(x_inv_real_vals), 'LineWidth', 2);
title('Inverse Fourier Transform of Real Part of X(j\omega)');
xlabel('t');
ylabel('x(t)');
grid on;
