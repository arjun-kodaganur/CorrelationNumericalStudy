%data = readmatrix("data.csv");

%data_r2975 = data(170001:180000,:);

%data_r2975_vperp5e6 = data_r2975(3:100:end,:);

% Basic plots
figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,5),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('B',FontSize=20);
title('$\theta$ vs B', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,6),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Omega_c$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Omega_c$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,7),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$k_\parallel$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $k_\parallel$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

% Phase function ddnu dddnu plots
figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,8),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,16), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\ddot{\nu}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\ddot{\nu}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,9),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,17), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

% Delta nu, Delta T plots
figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,10),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,18), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),sin(data_r2975_vperp5e6(:,10)),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2),sin(data_r2975_vperp5e6(:,18)), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$sin(\Delta\nu)$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $sin(\Delta\nu)$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,10)/(2*pi),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,18)/(2*pi), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
ylim([-1 1])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),rem(data_r2975_vperp5e6(:,10),(2*pi)),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), rem(data_r2975_vperp5e6(:,18),(2*pi)), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta\nu \% 2\pi$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta\nu \% 2\pi$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,11),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,19), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta t$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta t$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,27), 'g', 'LineWidth', 1.5);
hold on;
plot(data_r2975_vperp5e6(:,2), data_r2975_vperp5e6(:,28), 'k', 'LineWidth', 1.5,'LineStyle','--');
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\xi$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\xi$', 'Interpreter', 'latex',FontSize=20);
legend("Pitch","Pitch Plus",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;


% Delta delta nu plot
figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,20),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\delta\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\delta\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,20)/(2*pi),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
ylim([-1 1])
grid on;

%delta mu and relative plots
figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,12),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$D_e$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $D_e$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,13),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\tau_b$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\tau_b$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_vperp5e6(:,2),data_r2975_vperp5e6(:,14)/(1.602e-19),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\delta\mu$ [eV/T]', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\delta\mu$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;




%Interaction time plots
%{
tau_2order = data_r2975_vperp11e6(:,21)+ 1i*data_r2975_vperp11e6(:,22);
tau_3order = data_r2975_vperp11e6(:,23)+ 1i*data_r2975_vperp11e6(:,24);
tau_3order_SR = data_r2975_vperp11e6(:,24)+ 1i*data_r2975_vperp11e6(:,25);

figure;
plot(data_r2975_vperp11e6(:,2),real(tau_2order),'k','LineWidth',2);
hold on;
plot(data_r2975_vperp11e6(:,2),abs(tau_3order),'r','LineWidth',1.5,'LineStyle','--');

plot(data_r2975_vperp11e6(:,2),abs(tau_3order_SR),'b','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\tau_{rf}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex',FontSize=20);
legend("2nd Order","3rd Order","3rd Order SR",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
ylim([0 2e-7])
grid on;


%interaction time (sum of 2 resonances):
tau_sum_of_two_resonances = abs((tau_2order)+ (flip(tau_2order)));
tau_sum_of_two_resonances_SR = abs((tau_3order_SR)+ (flip(tau_3order_SR)));

figure;
plot(data_r2975_vperp11e6(:,2),tau_sum_of_two_resonances,'k','LineWidth',2);
hold on;
plot(data_r2975_vperp11e6(:,2),abs(tau_3order),'r','LineWidth',1.5,'LineStyle','--');

plot(data_r2975_vperp11e6(:,2),abs(tau_sum_of_two_resonances_SR),'b','LineWidth',1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\tau_{rf}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\tau_{rf}$', 'Interpreter', 'latex',FontSize=20);
legend("2nd Order(sum of 2 Resonances)","3rd Order","3rd Order SR(sum of 2 Resonances)",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
ylim([0 2e-7])
grid on;


%}