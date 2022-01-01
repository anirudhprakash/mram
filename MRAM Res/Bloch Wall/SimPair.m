clear
m0 = zeros(6, 1);
phi = 1.0 * pi / 180.0;
m0(1, 1) = 0;
m0(2, 1) = sin(phi);
m0(3, 1) = cos(phi);

m0(4, 1) = 0;
m0(5, 1) = cos(phi);
m0(6, 1) = sin(phi);

tspan = [0, 300];
[t, m] = ode45(@(t, m) SimPairFun(t, m), tspan, m0);
figure(1);
plot3(m(:, 1), m(:, 2), m(:, 3), m(:, 4), m(:, 5), m(:, 6));
axis([-1, 1, -1, 1, -1, 1]);
