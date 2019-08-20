%16-75

omgAB = input("angular velocity at A in rad/s: ");
L = input("what is L in inches: ");
rAB = L *3 / 2;
rBC= 2 * L;
rCD = L;

vb = cross([-rAB 0 0], [0 0 -omgAB]);
LToIC = rBC * sind(30) + tand(45) * rBC *cosd(30);

%omgCD x Rcd == vB + omgBC x Rcb
syms omgCD omgBC
eqns = cross([0 0 omgCD],[-rCD*cosd(45) rCD*sind(45) 0]) == vb + cross([0 0 omgBC],[-rBC*sind(30) -rBC*cosd(30) 0]);
eqn1 = eqns(1);
eqn2 = eqns(2);

sol = solve([eqn1, eqn2], [omgCD, omgBC]);

sprintf("angular velocity at D is %.2f rad/s", sol.omgCD)