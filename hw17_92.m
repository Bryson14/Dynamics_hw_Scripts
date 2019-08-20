%hw 17-92
L = input("length of the beam in ft: ");
weight = input("Whats the weight of the beam in lbf: ");
mass = weight/32.2;
Fa = input("magnitude of force at point A: ");
Fb = input("magnitude of force at point B: ");

%find mass moment of inertia
Ig = (1/12) * mass * L^2;

%sum of forces in x and y directions
syms a
Ax = solve(Fb*cosd(60) == mass * a,a);
Ay = solve(Fa + Fb * sind(60) - weight == mass * a, a);

%sum of moments about center of gravity
%sum of moments == alpha * Ig
alpha = solve(Fb*sind(60)*L/2 - Fa*L/2 == Ig * a, a);

sprintf("angular acceleration of bar is %.3f rad/ss", alpha)
sprintf("acceleration of center of bar is %.3f ft/ss", sqrt(Ax^2 + Ay^2))