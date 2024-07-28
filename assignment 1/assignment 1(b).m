% Define parameters
alpha = 0.5; % Choose a value for alpha
t = -10:0.01:10; % Define the time interval

% Define the signal x(t)
x = @(t) (t >= 0) .* 2 .* exp(-alpha .* t);

% Define the signal x(-t)
x_neg = @(t) (t >= 0) .* 2 .* exp(-alpha .* -t);

% Calculate the even component
x_e = @(t) (x(t) + x_neg(t)) / 2;

% Calculate the odd component
x_o = @(t) (x(t) - x_neg(t)) / 2;

% Evaluate the signals
x_t = x(t);
x_e_t = x_e(t);
x_o_t = x_o(t);

% Plot the original, even, and odd components
figure;

subplot(3,1,1);
plot(t, x_t);
title('Original Signal x(t)');
xlabel('t');
ylabel('x(t)');

subplot(3,1,2);
plot(t, x_e_t);
title('Even Component x_e(t)');
xlabel('t');
ylabel('x_e(t)');

subplot(3,1,3);
plot(t, x_o_t);
title('Odd Component x_o(t)');
xlabel('t');
ylabel('x_o(t)');

% Display the values of alpha and the interval chosen
disp('Value of alpha:');
disp(alpha);
disp('Time interval:');
disp([min(t) max(t)]);
