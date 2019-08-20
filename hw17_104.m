%hw 17 - 104
P = input("force of push in lb: ");
weight = input("weight of roller in lbf: ");
mass = weight / 32.2;
theta = input("angle between roller and ground: ");
radius = input("radius of wheel in ft: ");


Ig = .5 * mass * radius^2;
normal = weight + F*sind(theta);

%sum of forces
syms F a alpha
sumX = P*cos(theta) - F == mass*a;
sumM = F*radius == Ig*alpha;
noslip = a == radius*alpha;

sol = solve([sumX, sumM, noslip],[a,F,alpha]);
acc = (P*cosd(theta)/(mass*1.5));
sprintf("acceleration of center of mass is %.3f ft/ss", acc)