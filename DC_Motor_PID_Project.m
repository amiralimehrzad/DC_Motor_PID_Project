clc;
clear;
close all;

%% 1. DC Motor Parameters
R = 2;          % Armature resistance (Ohm)
L = 0.5;        % Armature inductance (H)
Kt = 0.1;       % Torque constant (Nm/A)
Ke = 0.1;       % Back EMF constant (Vs/rad)
J = 0.02;       % Moment of inertia (kg.m^2)
b = 0.2;        % Viscous friction coefficient (Nm.s/rad)

%% 2. Transfer Function Modeling

s = tf('s');

G = Kt / ((L*s + R)*(J*s + b) + Kt*Ke);

disp('DC Motor Transfer Function:');
G

%% 3. Open-Loop Step Response

figure; 
step(G, 5);
grid on;
title('Open-Loop DC Motor Step Response');
xlabel('Time (seconds)');
ylabel('Angular Speed (rad/s)');

open_loop_info = stepinfo(G);

disp('Open-Loop Performance:');
disp(open_loop_info);

%% 4. PID Controller Design

C = pidtune(G, 'PID');

disp('Designed PID Controller:');
C

Kp = C.Kp;
Ki = C.Ki;
Kd = C.Kd;

fprintf('Kp = %.4f\n', Kp);
fprintf('Ki = %.4f\n', Ki);
fprintf('Kd = %.4f\n', Kd);

%% 5. Closed-Loop System

T = feedback(C*G, 1);

figure;
step(T, 5);
grid on;
title('Closed-Loop Response with PID Controller');
xlabel('Time (seconds)');
ylabel('Angular Speed (rad/s)');

closed_loop_info = stepinfo(T);

disp('Closed-Loop Performance:');
disp(closed_loop_info);

%% 6. Open-Loop vs Closed-Loop Comparison

figure;
step(G, T, 5);
grid on;
legend('Open Loop', 'Closed Loop');
title('Comparison of Motor Responses');
xlabel('Time (seconds)');
ylabel('Angular Speed (rad/s)');

%% 7. Steady-State Error

ess = abs(1 - dcgain(T));

fprintf('Steady-State Error = %.6f\n', ess);

%% 8. Load Torque Disturbance Analysis

Gd = -(L*s + R) / ...
    ((L*s + R)*(J*s + b) + Kt*Ke);

Tdist = feedback(Gd, C*G);

time = 0:0.01:5;
load_torque = 0.05 * (time >= 2);

disturbance_response = lsim(Tdist, load_torque, time);

figure;
plot(time, disturbance_response, 'LineWidth', 1.5);
grid on;
title('Response to Load Torque Disturbance');
xlabel('Time (seconds)');
ylabel('Angular Speed Deviation (rad/s)');

%% 9. PID Performance Summary

fprintf('\n===== PID PERFORMANCE SUMMARY =====\n');
fprintf('Rise Time: %.4f seconds\n', ...
    closed_loop_info.RiseTime);

fprintf('Settling Time: %.4f seconds\n', ...
    closed_loop_info.SettlingTime);

fprintf('Overshoot: %.2f %%\n', ...
    closed_loop_info.Overshoot);

fprintf('Steady-State Error: %.6f\n', ess);
