%F15-18
%banging balls!!

ma = input("mass of ball A in kg: " );
mb = input("mass of ball B in kg: ");
va = input("velocity of ball A in m/s: ");
vb = input("velocity of ball B in m/s: ");
angle = input("angle of normal of inpact: ");
e = input("coefficient of restitution: ");
vax = va * sind(angle);
vay = vb * cosd(angle);
vbx = vb * cosd(angle);
vby = vb * sind(angle);

%conservation of momentum
syms vAx2 vBx2
eqn1 = ma * vax - mb * vbx == ma * vAx2 + mb * vBx2;

%definition of restitution
eqn3 = e == (vBx2 - vAx2) / (vax - vbx);

solx = solve([eqn1, eqn3], [vAx2, vBx2]);
vFinalA = sqrt(solx.vAx2.^2 + vay.^2);
vFinalB = sqrt(solx.vBx2.^2 + vby.^2)
sprintf("final velocity of ball A is %.2f m/s", vFinalA)