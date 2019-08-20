%16-11
r = input("radius of disk in m: ");
a = input("tangential acceleration coefficient in m/ss: ");
T = input("time in s: ");

%Atangential = radius * Aradial
aradial = a * T / r;

% dv = adt
% dVangular = Aangular dt
syms t
at = a * t / r;
vangular = int(at);
vdisplacement = int(vangular, 0 , T);
Vangular = int(at, 0 , T);
sprintf("angular Velocity at time t is %.2f rad/s \n angular displacement at time t is %.2f rad", Vangular,vdisplacement )




