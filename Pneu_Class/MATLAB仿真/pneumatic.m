%% ������ʼ��
clear
clc
global pi phi d rho kappa R T1 k x0 A A2
pi = 3.1416;
phi = 45 / 180 * pi;
d = 16*1e-3;
rho = 1.185;
kappa = 1.4;
R = 287.1;
T1 = 300;
k = 200*1e3;
x0 = 20*1e-3;
A = pi * (20*1e-3)^2;
A2 = pi / 4 * d^2;
%% ֱ��ʽ��ѹ��ѹ����������
figure(1)
grid on
hold on
xlabel('p_1(Pa)')
ylabel('p_2(Pa)')
title('ֱ��ʽ��ѹ��ѹ����������')
[p1, p2] = pressure_cal(0.04, 10e5);
plot(p1, p2/10, '-')
[p1, p2] = pressure_cal(0.07, 10e5);
plot(p1, p2/10, '--')
[p1, p2] = pressure_cal(0.1, 10e5);
plot(p1, p2/10, 'k:')
legend('q=0.04m^3/s', 'q=0.07m^3/s', 'q=0.1m^3/s')
%% ֱ��ʽ��ѹ��������������
figure(2)
grid on
hold on
xlabel('q(m^3/s)')
ylabel('p_2(Pa)')
title('ֱ��ʽ��ѹ��������������')
[q, p2] = flow_cal(11e5, 13e5);
plot(q, p2, '-')
[q, p2] = flow_cal(12e5, 13e5);
plot(q, p2, '--')
[q, p2] =flow_cal(13e5, 13e5);
plot(q, p2, 'k:')
legend('p_1=11bar', 'p_1=12bar', 'p_1=13bar')