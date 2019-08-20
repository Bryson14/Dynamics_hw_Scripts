%15-79

mA = input("Mass of disk A in kg : ");
mB = input("Mass of disk B in kg : ");
vA = input("Velocity of disk A in m/s : ");
vB = input("Velocity of disk B in m/s : ");
angle = input("angle of disk B: ");
vBx = vB * cosd(angle);
vBy = vB * sind(angle);
e = input("Coefficient of Restitution : ");

%conservation of momentum 
syms vA2 vBx2
eqn1 = mA * vA - mB * vBx == mA * vA2 + mB * vBx2;

%defifnition of restitution
eqn2 = e == (vBx2 - vA2)/ ( vA - (-vBx));

sol = solve([eqn1, eqn2], [vA2, vBx2]);

sprintf("Final velocity of disk A is %.2f m/s left", sol.vA2)
sprintf("Final velocity of disk B is %.2f m/s diagonally", sqrt(sol.vBx2.^2 + vBy.^2)) 
