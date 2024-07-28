% Define the parameters
N1 = 2;

% Case (a) N = 4N1 + 1
N_a = 4 * N1 + 1;
n_a = -((N_a-1)/2):((N_a-1)/2); % Define the range for n
x_a = (abs(n_a) <= N1); % Define the signal x[n] for case (a)

% Compute Fourier series coefficients for case (a)
X_a = fftshift(fft(x_a)) / N_a;

% Case (b) N = 8N1 + 1
N_b = 8 * N1 + 1;
n_b = -((N_b-1)/2):((N_b-1)/2); % Define the range for n
x_b = (abs(n_b) <= N1); % Define the signal x[n] for case (b)

% Compute Fourier series coefficients for case (b)
X_b = fftshift(fft(x_b)) / N_b;

% Case (c) N = 10N1 + 1
N_c = 10 * N1 + 1;
n_c = -((N_c-1)/2):((N_c-1)/2); % Define the range for n
x_c = (abs(n_c) <= N1); % Define the signal x[n] for case (c)

% Compute Fourier series coefficients for case (c)
X_c = fftshift(fft(x_c)) / N_c;

% Plot the Fourier series coefficients
figure;

subplot(3,1,1);
stem(n_a, abs(X_a), 'filled');
title('Fourier Series Coefficients |X[k]| for N = 4N1 + 1');
xlabel('k');
ylabel('|X[k]|');

subplot(3,1,2);
stem(n_b, abs(X_b), 'filled');
title('Fourier Series Coefficients |X[k]| for N = 8N1 + 1');
xlabel('k');
ylabel('|X[k]|');

subplot(3,1,3);
stem(n_c, abs(X_c), 'filled');
title('Fourier Series Coefficients |X[k]| for N = 10N1 + 1');
xlabel('k');
ylabel('|X[k]|');

% Display the values of N
disp('Values of N:');
fprintf('Case (a): N = %d\n', N_a);
fprintf('Case (b): N = %d\n', N_b);
fprintf('Case (c): N = %d\n', N_c);
