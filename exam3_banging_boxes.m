%box slams into a box on a spring
%F15-11

ma = input("mass of box A in kg: ");
mb = input("mass of box B in kg: ");
vb = input("velocity of box B in m/s: ");
k = input("spring coefficient in N/m: ");

%conservation of momentum
syms v2
vtogether = solve(mb * vb == v2 * (ma + mb), v2);

syms dis
displacement = solve(.5 * (ma + mb) * vtogether.^2 == .5 * k * dis.^2, dis);

sprintf("Displacement of spring is %.2f m", abs(displacement(1)))


