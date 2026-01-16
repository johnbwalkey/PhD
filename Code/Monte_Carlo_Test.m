%% Monte Carlo test script (VS Code + MATLAB)
% Save as: montecarlo_test.m
% Run in MATLAB terminal:  montecarlo_test
% This script:
% 1) Creates synthetic data
% 2) Uses Monte Carlo bootstrapping to estimate CI for the mean
% 3) Plots distribution + CI lines

clear; clc; close all;

%% 1) Generate example data (synthetic)
rng(42);                      % reproducible
n = 60;                       % sample size
true_mu = 10;                 % underlying mean
true_sigma = 2.5;             % underlying SD
data = true_mu + true_sigma * randn(n,1);

fprintf('Data summary:\n');
fprintf('  n = %d\n', n);
fprintf('  sample mean = %.4f\n', mean(data));
fprintf('  sample SD   = %.4f\n\n', std(data));

%% 2) Monte Carlo (bootstrap) to estimate 95%% CI of the mean
B = 50000;                    % number of Monte Carlo resamples
bootMeans = zeros(B,1);

for b = 1:B
    idx = randi(n, n, 1);     % resample indices WITH replacement
    bootMeans(b) = mean(data(idx));
end

alpha = 0.05;
ci = quantile(bootMeans, [alpha/2, 1-alpha/2]);
mhat = mean(data);

fprintf('Monte Carlo bootstrap results:\n');
fprintf('  B = %d\n', B);
fprintf('  mean estimate          = %.4f\n', mhat);
fprintf('  95%% bootstrap CI (mean) = [%.4f, %.4f]\n\n', ci(1), ci(2));

%% 3) Plot histogram of bootstrap means + CI
figure('Name','Monte Carlo Bootstrap of Mean','Color','w');
histogram(bootMeans, 60);
xlabel('Bootstrap mean');
ylabel('Count');
title(sprintf('Bootstrap distribution of mean (n=%d, B=%d)', n, B));
grid on;

hold 
xline(mhat, '--', 'Sample mean', 'LineWidth', 2);
xline(ci(1), '-',  'CI low',      'LineWidth', 2);
xline(ci(2), '-',  'CI high',     'LineWidth', 2);
hold off;

%% 4) Extra quick check: Monte Carlo estimate of pi (classic)
N = 200000;
x = rand(N,1);
y = rand(N,1);
inside = (x.^2 + y.^2) <= 1;
pi_est = 4 * mean(inside);

fprintf('Extra check (pi via Monte Carlo):\n');
fprintf('  N = %d, pi estimate = %.6f (error = %.6f)\n', N, pi_est, abs(pi - pi_est));


% to run this open terminal and change to matlab terminal.
% then use cd to get to folder with code
% then in matlab terminal just type below (CASE sensitive and no .m
% Monte_Carlo_Test
