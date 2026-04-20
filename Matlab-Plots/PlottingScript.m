%data = readmatrix("data.csv");

%data_r125 = data(990001:end,:);

%data_r125_vperp2e8 = data_r125(100:100:end,:);

% Basic plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,5),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('B');
title('$\theta$ vs B', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,6),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\Omega_c$', 'Interpreter', 'latex');
title('$\theta$ vs $\Omega_c$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,7),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$k_\parallel$', 'Interpreter', 'latex');
title('$\theta$ vs $k_\parallel$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

% Phase function ddnu dddnu plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,8),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2), data_r125_vperp2e8(:,16), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\ddot{\nu}$', 'Interpreter', 'latex');
title('$\theta$ vs $\ddot{\nu}$', 'Interpreter', 'latex');
legend("Before Resonance","After Resonance",'Location','bestoutside')
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,9),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2), data_r125_vperp2e8(:,17), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex');
title('$\theta$ vs $\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex');
legend("Before Resonance","After Resonance",'Location','bestoutside')
xlim([-pi pi])
grid on;

% Delta nu, Delta T plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,10),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2), data_r125_vperp2e8(:,18), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\Delta\nu$', 'Interpreter', 'latex');
title('$\theta$ vs $\Delta\nu$', 'Interpreter', 'latex');
legend("Before Resonance","After Resonance",'Location','bestoutside')
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,11),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2), data_r125_vperp2e8(:,19), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\Delta t$', 'Interpreter', 'latex');
title('$\theta$ vs $\Delta t$', 'Interpreter', 'latex');
legend("Before Resonance","After Resonance",'Location','bestoutside')
xlim([-pi pi])
grid on;

% Delta delta nu plot
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,20),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\delta\Delta\nu$', 'Interpreter', 'latex');
title('$\theta$ vs $\delta\Delta\nu$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

%delta mu and relative plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,12),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$D_e$', 'Interpreter', 'latex');
title('$\theta$ vs $D_e$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,13),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_b$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_b$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,14),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\delta\mu$', 'Interpreter', 'latex');
title('$\theta$ vs $\delta\mu$', 'Interpreter', 'latex');
xlim([-pi pi])
grid on;

tau_2order = data_r125_vperp2e8(:,21)+ 1i*data_r125_vperp2e8(:,22);
tau_3order = data_r125_vperp2e8(:,23)+ 1i*data_r125_vperp2e8(:,24);
tau_3order_SR = data_r125_vperp2e8(:,24)+ 1i*data_r125_vperp2e8(:,25);


%Interaction time plots
figure;
plot(data_r125_vperp2e8(:,2),real(tau_2order),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2),abs(tau_3order),'r','LineWidth',1.5,'LineStyle','--');

plot(data_r125_vperp2e8(:,2),abs(tau_3order_SR),'b','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_{rf}$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex');
legend("2nd Order","3rd Order","3rd Order SR",'Location','bestoutside')
xlim([-pi pi])
ylim([0 2e-7])
grid on;


%interaction time (sum of 2 resonances):
tau_sum_of_two_resonances = abs((tau_2order)+ (flip(tau_2order)));
tau_sum_of_two_resonances_SR = abs((tau_3order_SR)+ (flip(tau_3order_SR)));

figure;
plot(data_r125_vperp2e8(:,2),tau_sum_of_two_resonances,'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2),abs(tau_3order),'r','LineWidth',1.5,'LineStyle','--');

plot(data_r125_vperp2e8(:,2),abs(tau_sum_of_two_resonances_SR),'b','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_{rf}$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex');
legend("2nd Order(sum of 2 Resonances)","3rd Order","3rd Order SR(sum of 2 Resonances)",'Location','bestoutside')
xlim([-pi pi])
ylim([0 2e-7])
grid on;


