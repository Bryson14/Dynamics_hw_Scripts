%hw p14.4 c

m = input("mass of body in kg: ");
k = input("spring constant N/m: ");
r = input("radius in m: ");
angle = input("angle of body: ");
L = input("unstretched length of spring in m: ");

% find total potential energies of system in J

%potential energy of spring
Ek = .5 * k * (r - L).^2;

%potential energy of gravity
Eg = m * 9.81 * sind(angle) * r;

sprintf("Total energy of system: %.3f J", Ek + Eg)