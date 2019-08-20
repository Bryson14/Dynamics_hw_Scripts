%16-22
rA = input("radius of gear A in mm : ");
rB = input("radius of gear B in mm : ");
rC = input("radius of gear C in mm : ");
rD = input("radius of gear D in mm : ");
VAangular = input("velocity of gear A in rad/s: ");
AAangular = input("accelration of gear A in rad/ss: ");



%Atangential = radius * Aradial
syms VB AB
VBangular = solve(rA * VAangular == rB * VB, VB);
ABangular = solve(rA * AAangular == rB * AB, AB);

syms VD AD
VDangular = solve(rC * VBangular == rD * VD, VD);
ADangular = solve(rC  * ABangular == rD * AD, AD);


sprintf("Gear D speed %.2f rad/s \n Gear D accel %.2f rad/s",VDangular, ADangular)