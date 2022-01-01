clear
m0 = zeros(3, 1);
phi = 1.0 * pi / 180.0;
m0(1) = 0;
m0(2) = sin(phi);
m0(3) = cos(phi);

tspan = [0, 300];
[t, m] = ode45(@(t, m) youfun(t, m), tspan, m0);
figure(1);
plot3(m(:, 1), m(:, 2), m(:, 3));
axis([-1, 1, -1, 1, -1, 1]);