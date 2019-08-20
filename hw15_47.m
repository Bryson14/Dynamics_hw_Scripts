%15-47
mA = 1000 * input("mass of train car A in Mg: ");
vA = input("velocity of train A in km/h: ") * 1000 / 3600;
mB = 1000 * input("mass of train car B in Mg: ");
vB = input("velocity of train B in km/h: ") * 1000 / 3600;
k = 1000000 * input("spring constant in MN/m: ");

% conservation of momentum
syms v
V = solve(mA * vA - vB * mB == (mA + mB) * v, v);

%potential energy of spring = kenetic energy of the train cars
syms s
ans = solve(.5 * mA * vA.^2 + .5 * mB * vB.^2 == .5 * (mA + mB) * V.^2 + .5 * k * s.^2, s)

sprintf("Compression of spring is %.2f mm ",ans(2) * 1000)