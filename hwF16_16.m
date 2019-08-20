%F16-16

vcable = input("speed of cable AB in m/s: ");
vrack = input("speed of gear rack C in m/s: ");
rin = input("inside radius in m: ");
rout = input("outside radius in m: ");

%find IC using similar triangles
syms extra
Extra = solve(vcable / (rin + extra) == vrack / (rout - extra), extra);
omgIC = vcable / (Extra + rin);
vIC = omgIC * (Extra);
sprintf("speed of gear %.3f", vIC)

