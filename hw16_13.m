%16-13
rA = input("radius of pulley A in mm : ");
rB = input("radius of pulley B in mm : ");
rC = input("radius of pulley C in mm : ");
rD = input("radius of pulley D in mm : ");
VAangular = input("velocity of pulley A in rad/s: ");

%Atangential = radius * Aradial
syms VB
VBangular = solve(rA * VAangular == rD * VB, VB);

syms VC
VCangular = solve(rB * VBangular == rC * VC, VC);

sprintf("Pulley BD speed %.2f rad/s \n Pulley C speed %.2f rad/s",VBangular,VCangular )