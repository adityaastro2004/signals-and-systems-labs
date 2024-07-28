% Define the range for n
n = 0:10; % We need a larger range to plot the convolution result

% Define the input signal x[n]
x = zeros(1, length(n));
x(n >= 0 & n <= 4) = 1;

% Define the impulse response h[n]
alpha = 1.5; % Choose a positive value for alpha > 1
h = zeros(1, length(n));
h(n >= 0 & n <= 6) = alpha.^n(n >= 0 & n <= 6);

% Calculate the output signal y[n] by convolving x[n] and h[n]
y = conv(x, h);
% Define the range for the convolution result
n_conv = 0:(length(y)-1);

% Plot the signals
figure;

subplot(3,1,1);
stem(n, x, 'filled');
title('Input Signal x[n]');
xlabel('n');
ylabel('x[n]');
xlim([min(n) max(n)]);

subplot(3,1,2);
stem(n, h, 'filled');
title('Impulse Response h[n]');
xlabel('n');
ylabel('h[n]');
xlim([min(n) max(n)]);

subplot(3,1,3);
stem(n_conv, y, 'filled');
title('Output Signal y[n] = x[n] * h[n]');
xlabel('n');
ylabel('y[n]');
xlim([min(n_conv) max(n_conv)]);

% Display the range for the convolution result
disp('Range for convolution result y[n]:');
disp(n_conv);
