%hw 14.78

k = input("Stiffness of spring in N/m: ");
L0 = input("Unstetched length of spring: ");
m = input("Mass of collar in kg: ");
d = input("distance from pole to anchor: ");
h = input("height of collar from anchor in m: ");

%change of lenght of spring
Lf = sqrt(h.^2 + d.^2);

%potential energy of spring
Ek1 = .5 * k * (Lf - L0).^2;
Ek2 = .5 * k * (d - L0).^2;

%petential energy of gravity
Eg = m * h * 9.81;

% conservation of energies
syms v
vFINAL = solve(Eg + Ek1 == Ek2 + .5 * m * v.^2, v);
sprintf("Speed of collar at pt. B = %.3f m/s", vFINAL)

