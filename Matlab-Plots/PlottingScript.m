%data = readmatrix("data.csv");

%data_r2975 = data(170001:180000,:);

data_r2975_Eperp1e3 = data_r2975(26:100:end,:);

% Basic plots
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,5),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('B',FontSize=20);
title('$\theta$ vs B', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,6),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Omega_c$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Omega_c$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,7),'k','LineWidth',2)
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$k_\parallel$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $k_\parallel$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

% Phase function ddnu dddnu plots
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,8),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,16), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\ddot{\nu}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\ddot{\nu}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,9),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,17), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{d\ddot{\nu}}{dt}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

% Delta nu, Delta T plots
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,10),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,18), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

%{
figure;
plot(data_r2975_Eperp1e3(:,2),sin(data_r2975_Eperp1e3(:,10)),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2),sin(data_r2975_Eperp1e3(:,18)), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$sin(\Delta\nu)$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $sin(\Delta\nu)$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;
%}

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,10)/(2*pi),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,18)/(2*pi), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
ylim([-1 1])
grid on;

%{
figure;
plot(data_r2975_Eperp1e3(:,2),rem(data_r2975_Eperp1e3(:,10),(2*pi)),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), rem(data_r2975_Eperp1e3(:,18),(2*pi)), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta\nu \% 2\pi$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta\nu \% 2\pi$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;
%}

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,11),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,19), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\Delta t$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\Delta t$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,27), 'g', 'LineWidth', 1.5);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,28), 'k', 'LineWidth', 1.5,'LineStyle','--');
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\xi$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\xi$', 'Interpreter', 'latex',FontSize=20);
legend("Pitch","Pitch Plus",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;


% Delta delta nu plot
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,20),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\delta\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\delta\Delta\nu$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,20)/(2*pi),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
ylim([-1 1])
grid on;

%delta mu and relative plots
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,12),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$D_e$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $D_e$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,13),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\tau_b$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\tau_b$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,14)/(1.602e-19),'k','LineWidth',2);
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

%del nu and del del nu overlap plot
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,10)/(2*pi),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,18)/(2*pi), 'r', 'LineWidth', 1.5,'LineStyle','--');

plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,20)/(2*pi),'b','LineWidth',1.5);
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\delta\Delta\nu}{2\pi}$,$\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\delta\Delta\nu}{2\pi}$, $\frac{\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
legend("Before Resonance","After Resonance","delta(Delta(nu))",'Location','bestoutside',FontSize=15)
xlim([-pi pi])
ylim([-1 1])
grid on;

%Energy of particle vs Theta
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,31)/(1e3*1.602e-19),'k','LineWidth',2);
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('Energy(keV)', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs Energy', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
grid on;

% Trapped or passing backdrop
figure;
hold on;

x = data_r2975_Eperp1e3(:,2);
y = data_r2975_Eperp1e3(:,20)/(2*pi);
mask = data_r2975_Eperp1e3(:,32)';

% Get y-limits for background filling
ymin = min(y);
ymax = max(y);

% Find regions where mask changes
d = diff([mask(1), mask]);

starts = find(d ~= 0);
starts = [1 starts];

for k = 1:length(starts)

    i1 = starts(k);

    if k < length(starts)
        i2 = starts(k+1)-1;
    else
        i2 = length(x);
    end

    x1 = x(i1);
    x2 = x(i2);

    if mask(i1) == 0
        c = [0.85 0.92 1.0];   % light blue
    else
        c = [1.0 0.88 0.88];   % light red
    end

    patch([x1 x2 x2 x1], ...
          [ymin ymin ymax ymax], ...
          c, ...
          'EdgeColor','none');
end

% Plot signal on top
plot(x,y,'k','LineWidth',1.5);

uistack(findobj(gca,'Type','line'),'top');

xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $\frac{\delta\Delta\nu}{2\pi}$', 'Interpreter', 'latex',FontSize=20);
xlim([-pi pi])
ylim([-1 1])
grid on;
hold off;

%Vpara and Vperp after resonance
figure;
plot(data_r2975_Eperp1e3(:,2),data_r2975_Eperp1e3(:,4),'k','LineWidth',2);
hold on;
plot(data_r2975_Eperp1e3(:,2), data_r2975_Eperp1e3(:,15), 'r', 'LineWidth', 1.5,'LineStyle','--');
hold off;
xlabel('$\theta$', 'Interpreter', 'latex',FontSize=20);
ylabel('$V_{\parallel} , V_{\perp} $', 'Interpreter', 'latex',FontSize=20);
title('$\theta$ vs $V_{\parallel} , V_{\perp}$', 'Interpreter', 'latex',FontSize=20);
legend('$V_{\parallel}$' , '$V_{\perp} $', 'Interpreter', 'latex','Location','bestoutside',FontSize=15)
xlim([-pi pi])
grid on;
