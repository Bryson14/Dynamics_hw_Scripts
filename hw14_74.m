%hw 14.74

massA = input("Mass of block A in kg: ");
masB = input("Mass of block B in terms of A: ");
massB = massA * masB; 
y = input("Distance decended by B: ");

syms aA aB T 
eqn1 = massA * aA == massA * 9.81 - 3 * T;
eqn2 = massB * aB == massB * 9.81 - T;
eqn3 = 3 * aA == - aB;
%positive is down and negative is up

sol = solve([eqn1, eqn2, eqn3],[aA, aB, T]);

syms t

time = solve( 0 == .5 * sol.aB * t.^2 - y, t);

sprintf("velocity of block A %.3f m/s upwards", -time * sol.aA)