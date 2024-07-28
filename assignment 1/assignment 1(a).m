% Part (a) y[n] = cos[n/6]
n_a = 0:50; % Define the range for n
y_a = cos(n_a/6);

% Plot y[n] for part (a)
figure;
subplot(2,2,1);
stem(n_a, y_a);
title('y[n] = cos[n/6]');
xlabel('n');
ylabel('y[n]');

% Part (b) y[n] = cos[8πn/31]
n_b = 0:50; % Define the range for n
y_b = cos((8*pi*n_b)/31);

% Plot y[n] for part (b)
subplot(2,2,2);
stem(n_b, y_b);
title('y[n] = cos[8\pi n/31]');
xlabel('n');
ylabel('y[n]');

% Part (c) y(t) = cos(t/6)
t_c = 0:0.1:50; % Define the range for t
y_c = cos(t_c/6);

% Plot y(t) for part (c)
subplot(2,2,3);
plot(t_c, y_c);
title('y(t) = cos(t/6)');
xlabel('t');
ylabel('y(t)');

% Part (d) y(t) = cos(t/6) + sin(2π/3 t)
t_d = 0:0.1:50; % Define the range for t
y_d = cos(t_d/6) + sin((2*pi/3)*t_d);

% Plot y(t) for part (d)
subplot(2,2,4);
plot(t_d, y_d);
title('y(t) = cos(t/6) + sin(2\pi/3 t)');
xlabel('t');
ylabel('y(t)');

% Calculate Fundamental Frequencies
% (a) y[n] = cos[n/6]
fundamental_freq_a = 1 / (2*pi*6);

% (b) y[n] = cos[8πn/31]
fundamental_freq_b = 1 / (31 / (8*pi));

% (c) y(t) = cos(t/6)
fundamental_freq_c = 1 / (2*pi*6);

% (d) y(t) = cos(t/6) + sin(2π/3 t)
% The fundamental frequency is the greatest common divisor of the individual frequencies
freq1_d = 1 / (2*pi*6);
freq2_d = 3 / (2*pi);
fundamental_freq_d = gcd(freq1_d, freq2_d);

disp('Fundamental Frequencies:');
fprintf('Part (a): %f\n', fundamental_freq_a);
fprintf('Part (b): %f\n', fundamental_freq_b);
fprintf('Part (c): %f\n', fundamental_freq_c);
fprintf('Part (d): %f\n', fundamental_freq_d);
