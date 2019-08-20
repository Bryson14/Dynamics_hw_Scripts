%exam4-4
%f16-24

BC = input("distance from B to C in m: ");
r = input("radius of wheel in m: ");
w = input("angular velocity of wheel CCW: ");
a = input("angular acceleration of wheel CCW: ");
%find angular acceleration of bc
%using w as an omega sign

Vb = w * r;
B_to_IC = tand(60) * BC;
w_BC = Vb / B_to_IC;

accel_B = cross([0 0 -a],[0 r 0]) - w.^2 * [0 r 0];
syms alphaBC accel_A
eqn = [accel_A*cosd(30) accel_A*sind(30) 0]==accel_B + cross([0 0 alphaBC],[BC 0 0]) - w_BC.^2 * [BC 0 0];
sol = solve([eqn(1), eqn(2)],[alphaBC, accel_A]);

sprintf("angular acceleration of BC is %.3f rad/ss", sol.alphaBC)