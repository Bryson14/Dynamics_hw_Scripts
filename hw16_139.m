%16-139 $
v = input("angular velocity of link AD in rad/s: ");
l = input("length of link AD in mm: ")/1000;
d = input("distance of block D from point c in mm: ")/1000;

%Vd = Wa-d x Rd-a
Vd = cross([ 0 0 v], [.2*sind(30) .2*cosd(30) 0]);

%Ad = alphaAD x Rd/s - Wad^2 * Rd-s
Ad = 0 - v.^2 * [.2*sind(30) .2*cosd(30) 0];

%Vd = Vc + OMEGA x Rd-c + Vd-s
syms omegaCB vDC
eqns = Vd == 0 + cross([0 0 omegaCB],[d 0 0]) + [vDC 0 0];
sol = solve(eqns,[omegaCB, vDC]);

%Ad = Ac + OMEGA x Rd-c + OMEGA X( OMEGA x Rd-c) + 2 OMEGA x Vd-c + Ad-c
syms alphaCD alphaDC
OMEGA = [0 0 alphaCD];
eqns2 = Ad == 0 + cross(OMEGA, [d 0 0]) + cross([0 0 sol.omegaCB], cross([0 0 sol.omegaCB], [d 0 0])) + 2*cross([0 0 sol.omegaCB],[sol.vDC 0 0]) + alphaDC;
sol2 = solve([eqns2(2), eqns(3)], [alphaCD, alphaDC]);


sprintf("Angular acceleration of CB is %.3f rad/ss", sol2.alphaCD)