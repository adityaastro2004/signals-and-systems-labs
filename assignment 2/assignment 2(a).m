% Define the range for n
n = -10:10;

% Define the input signal x[n]
x = double(n >= 3);

% Define the impulse response h[n]
h = (0.8).^n .* double(n >= 2);

% Calculate the output signal y[n] by convolving x[n] and h[n]
y_full = conv(x, h);
% Define the range for the convolution result
n_conv = min(n) + min(n):max(n) + max(n);

% Select the range [-10, 10] from the convolution result
n_plot = -10:10;
y_plot = y_full((n_plot - min(n_conv)) + 1);

% Plot the signals
figure;

subplot(3,1,1);
stem(n, x, 'filled');
title('Input Signal x[n] = u[n - 3]');
xlabel('n');
ylabel('x[n]');
xlim([-10 10]);

subplot(3,1,2);
stem(n, h, 'filled');
title('Impulse Response h[n] = (0.8)^n u[n - 2]');
xlabel('n');
ylabel('h[n]');
xlim([-10 10]);

subplot(3,1,3);
stem(n_plot, y_plot, 'filled');
title('Output Signal y[n] = x[n] * h[n]');
xlabel('n');
ylabel('y[n]');
xlim([-10 10]);

% Display the range for the convolution result
disp('Range for convolution result y[n]:');
disp(n_conv);
