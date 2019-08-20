%16-107
l = input("length of bar AB in m: ");
v = input("velocity of roller A in m/s: ");
a = input("acceleration of roller A in m/ss: ");

%distance to IC is l because going perpendicular from the walls forms a
%equlateral triangle
omega = v / l;
vB = omega * l;

%relative acveleration equation
%Ab = Aa + alpha x Rb/a - omega^2 Rb/a
syms alpha Ab

eqns = [Ab * cosd(30) -Ab * sind(30) 0] == [0 -a 0] + cross([0 0 alpha], [l*sind(30) l*cosd(30) 0]) - omega.^2 *[l* sind(30) l*cosd(30) 0];
sol = solve(eqns, [alpha, Ab]);

sprintf("angular acceleration of the bar is %.3f rad/ss", sol.alpha)
