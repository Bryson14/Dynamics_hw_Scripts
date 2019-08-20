%exam4-5
%16-129

R = input("radius of disk in m: ");
r = input("distance from center to ball in m: ");
w = input("angular velocity of disk in rad/s: ");
alpha = input("angular acceleration of disk in rad/ss: ");
v = input("velocity of ball in mm/s: ") / 1000;
a = input("acceleration of ball in mm/ss: ") /1000;

abs_v = sqrt(v.^2 + (r * w).^2);
abs_a_vector = cross([0 0 alpha],[r 0 0]) + cross([0 0 w],cross([0 0 w],[r 0 0])) + 2 * cross([0 0 w],[v 0 0]) + [a 0 0];
abs_a = sqrt(abs_a_vector(1).^2 + abs_a_vector(2).^2);
sprintf("velocity of ball %.2f m/s -- acceleration of ball %.2f m/ss", abs_v, abs_a)
