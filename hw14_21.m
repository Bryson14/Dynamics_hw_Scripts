% hw 14_21
wa = input("Whats the weight of block A in lbf: ");
ma = wa / 32.2;
wb = input("Whats the weight of block B in lbf: ");
mb = wb / 32.2;
xb = input("Whats the upward displacement of block B in ft: ");
xa = .5 * xb;
mu = input("Whats the coefficient of friction: ");

%find velocity of block A down.

Na = wa * cosd(60);
Fa = Na * mu;

Nb = wb * cosd(30);
Fb = Nb * mu;

%system of equations to solve for velocity a and velocity b
syms va vb
eqn1 = wa * sind(60) * xa - Fa * xa - wb * sind(30) * xb - Fb * xb == .5 * ma * va.^2 + .5 * mb * vb.^2;
eqn2 = 2 * va == - vb;

sol = solve([eqn1, eqn2], [va, vb]);

velocityA = sol.va
velocityB = sol.vb;
