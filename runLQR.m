clear
close all

%% LQR
% Symbolic state and input vectors
q = sym('q', [4, 1]);
u = sym('u', [1, 1]);
syms t;

% Linearized dynamics at upper position
A = subs(jacobian(dynamfunc(t, q, u), q), {q(1), q(2), q(3), q(4)}, {0, 0, 0, 0});
B = subs(jacobian(dynamfunc(t, q, u), u), {u, q(1), q(2), q(3), q(4)}, {0, 0, 0, 0, 0});
A = double(A);
B = double(B);

% Define quadratic cost for infinite time horizon
Q = eye(4);
R = 1;

% Initial and goal states
q0 = [0 0 0 0]';
qdes = [50 0 0 0]';

% Get Gain Matrix, K, with LQR
K = lqr(A,B,Q,R);

% Dynamics with LQR control inputs
odecon = @(t,q) dynamfunc(t, q, -K*(q-qdes));

% Nonlinear simulation
tspan = [0 10]; % simulation timespan
[tout, qout] = ode45(odecon, tspan, q0);


%% Plotting and Animation
plot(tout, qout);
legend("\phi", "d\phi", "\theta", "d\theta")

animate2D(tout, qout(:, 1), qout(:, 3));