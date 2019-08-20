%hw 14- 87

m = input("Mass of the block in kg: ");
s = input("distance between the springs in m: ");
kA = input("Stiffness of spring A in N/m: ");
kB = input("Stiffness of spring B in N/m: ");

syms xA xB
eqn1 = m * 9.81 * (s + xA + xB) == .5 * kA * xA.^2 + .5 * kB * xB.^2;
eqn2 = kA * xA == kB * xB;

sol = solve([eqn1, eqn2], [xA, xB]);
sol.xA;
sol.xB;
sprintf("(Take the last answer\nDeformation by spring A %.3f m \n Deformation by spring B %.3f m\n" , sol.xA, sol.xB)
