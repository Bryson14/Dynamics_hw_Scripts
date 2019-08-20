%16-109
v = input("angular velocity of bar in rad/s: ");
a = input("angular acceleration of bar in rad/ss: ");
CD = input("length of R in mm: ")/1000;
AB = CD * 2;
BC = CD * 4.5;

Vb = AB * v;
Vc = Vb; 
%since there is no IC becuase velocities vectors are parallel
%omgCD x Rcd == vB + omgBC x Rcb
omegaD = Vc / CD;

%Ab = alpha x Rb/a - omega^2 Rb/a
Ab = cross([0 0 a],[0 AB 0]) - v.^2 * [0 AB 0]
syms alphaBC

%Ac = alpha x Rc/d - omega^2 * Rc/d
Ac = 


sprintf("angular acceleration of bar bc is %.3f rad/ss", angAccBC)
