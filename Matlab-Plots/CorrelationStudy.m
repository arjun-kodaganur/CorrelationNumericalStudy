%data = readmatrix("data.csv");

sindelnu = sin(data(:,18));

figure;
subplot(3,1,1);
histogram(sindelnu, 'Normalization', 'pdf');
xlabel('Value');
ylabel('Probability Density');
title('Distribution of sin(delNu)');
legend('sin(delNu) - Histogram');

grid on;

randnoise = 2*rand(1, length(sindelnu)) - 1;

subplot(3,1,2);
histogram(randnoise, 'Normalization', 'pdf');
xlabel('Value');
ylabel('Probability Density');
title('Distribution of noise');
legend('noise - Histogram');

%[Sindelnu,Randnoise] = meshgrid(sindelnu,randnoise);

noisy_sinDelnu = randnoise'+ sindelnu;

pd = fitdist(noisy_sinDelnu, 'Normal');
x = linspace(min(noisy_sinDelnu), max(noisy_sinDelnu), 1000);

subplot(3,1,3);
histogram(noisy_sinDelnu, 'Normalization', 'pdf');
hold on;
plot(x, pdf(pd, x), 'r', 'LineWidth', 2);
xlabel('Value');
ylabel('Probability Density');
title('Distribution of sin(delNu)+noise');
legend('sin(delNu)+noise - Histogram','Fitted');

mu = mean(noisy_sinDelnu);
sigma = std(noisy_sinDelnu);
grid on;