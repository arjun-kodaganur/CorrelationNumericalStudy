data = readmatrix("data.csv");

data_r125 = data(990001:end,:);

data_r125_vperp2e8 = data_r125(100:100:end,:);

% Basic plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,5),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('B');
title('$\theta$ vs B', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,6),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\Omega_c$', 'Interpreter', 'latex');
title('$\theta$ vs $\Omega_c$', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,7),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$k_\parallel$', 'Interpreter', 'latex');
title('$\theta$ vs $k_\parallel$', 'Interpreter', 'latex');
xlim([0 2*pi])
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
xlim([0 2*pi])
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
xlim([0 2*pi])
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
xlim([0 2*pi])
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
xlim([0 2*pi])
grid on;

% Delta delta nu plot
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,20),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\delta\Delta\nu$', 'Interpreter', 'latex');
title('$\theta$ vs $\delta\Delta\nu$', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

%delta mu and relative plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,12),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$D_e$', 'Interpreter', 'latex');
title('$\theta$ vs $D_e$', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,13),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_b$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_b$', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,14),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\delta\mu$', 'Interpreter', 'latex');
title('$\theta$ vs $\delta\mu$', 'Interpreter', 'latex');
xlim([0 2*pi])
grid on;

%Interaction time plots
figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,21),'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,22),'r','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_{rf}$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex');
legend("2nd Order","3rd Order",'Location','bestoutside')
xlim([0 2*pi])
ylim([0 1e-7])
grid on;

figure;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,22),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_{rf}$ - 3rd order', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_{rf}$ - 3rd order', 'Interpreter', 'latex');
xlim([0 2*pi])
ylim([0 1e-7])
grid on;

%interaction time (sum of 2 resonances):
tau_sum_of_two_resonances = (data_r125_vperp2e8(:,21).^2)+ (flip(data_r125_vperp2e8(:,21))).^2;

figure;
plot(data_r125_vperp2e8(:,2),tau_sum_of_two_resonances,'k','LineWidth',2);
hold on;
plot(data_r125_vperp2e8(:,2),data_r125_vperp2e8(:,22).^2,'r','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex');
ylabel('$\tau_{rf}$', 'Interpreter', 'latex');
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex');
legend("2nd Order(sum of 2 Resonances)","3rd Order",'Location','bestoutside')
xlim([-0.2*pi 0.2*pi])
ylim([0 1e-6])
grid on;