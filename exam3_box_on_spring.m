%exam 3 F14 - 1

m = input("mass of box: ");
f = input("pushing force: ");
s = input("desired distance s in m: ");
angle = input("angle of force: ");
k = input("spring coefficient: ");

syms v
vF = solve(cosd(angle) * f * s == .5 * k * s.^2 + .5 * m * v.^2,v);
sprintf("velocity of box at %.2f is %.2f m/s", s , abs(vF(1)))