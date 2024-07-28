% Define the range for x for three periods
x = linspace(-3*pi, 3*pi, 1000);

% Define the periodic function f(x)
f = mod(x + pi, 2*pi) - pi;

% Plot the function for three periods
figure;
plot(x, f, 'LineWidth', 2);
title('Periodic Function f(x) for Three Periods');
xlabel('x');
ylabel('f(x)');
grid on;
xlim([-3*pi 3*pi]);
xticks(-3*pi:pi:3*pi);
xticklabels({'-3\pi', '-2\pi', '-\pi', '0', '\pi', '2\pi', '3\pi'});
