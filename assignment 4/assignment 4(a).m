% Define the piecewise function using heaviside functions
syms t;
f = 2*heaviside(t + 1) - t*heaviside(t) + 2*t*heaviside(t - 1) - 2*heaviside(t - 1) - t*heaviside(t - 2) + 2*heaviside(t - 2) - 2*heaviside(t - 3);

% Sampling interval
T = 0.001;
% Time values
t_values = -10:T:10;

% Evaluate the piecewise function at the given time values
f_values = double(subs(f, t, t_values));

% Perform the FFT
N = length(t_values);
F = fftshift(fft(f_values, N));

% Frequency vector
omega = linspace(-pi/T, pi/T, N);

% Plot the frequency domain signal X(jω)
figure;
subplot(2, 2, 1);
plot(omega, abs(F), 'LineWidth', 2);
title('Frequency Domain Signal |X(jω)|');
xlabel('Angular Frequency (rad/s)');
ylabel('|X(jω)|');
grid on;

% Plot the magnitude spectrum
subplot(2, 2, 2);
plot(omega, abs(F), 'LineWidth', 2);
title('Magnitude Spectrum');
xlabel('Angular Frequency (rad/s)');
ylabel('|X(jω)|');
grid on;

% Plot the phase spectrum
subplot(2, 2, 3);
plot(omega, angle(F), 'LineWidth', 2);
title('Phase Spectrum');
xlabel('Angular Frequency (rad/s)');
ylabel('Phase of X(jω)');
grid on;

% Perform the inverse FFT of the real part of the frequency domain signal
inverse_F = ifft(ifftshift(real(F)));

% Plot the inverse Fourier transform
subplot(2, 2, 4);
plot(t_values, real(inverse_F), 'LineWidth', 2);
title('Inverse Fourier Transform of Real{X(jω)}');
xlabel('Time');
ylabel('f(t)');
grid on;
