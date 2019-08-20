%15 - 61
%block b slides without friction

mA = input("mass of block A in kg: ");
N = mA * 9.81;
mu = input("friction constant: ");
v = input("velocity of A in m/s: ");
s = input("distance between the block in m: ");
mB = input("mass of block B in kg: ");
k = input("spring constant in N/m: ");
e = input("coefficient of restitution: ");

%velocity at point of contact
syms v1
Vtouch = solve(.5 * mA * v.^2 - N * mu * s == .5 * mA * v1.^2, v1);

%conservation of momentum
syms vA vB
eqn1 = mA * Vtouch(2) + 0 == mA * vA + mB * vB;

%definition of coefficent of resittution
eqn2 = e * Vtouch(2) == (vB - vA);

sol = solve([eqn1, eqn2], [vA, vB]);
sol.vA;
sol.vB;
%so A hits b, making it go faster than itself, Now a travels alone and goes
%until its stopped by the spring

%conservation of energy between block b and the spring
syms x
X = solve(.5 * mB * sol.vB.^2 == .5 * k * x.^2,x);
sprintf("compression of spring is %.3f m",X(2))