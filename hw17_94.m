%hw 17-94
weight = input("weight of tire in lbf: ");
mass = weight / 32.2;
RG = input("radius of Gyration in ft: ");
muS = input("coefficient of static friction : ");
muK = input("coefficient of kinetic friction : ");
theta = input("incline of the plane: ");
radius = input("radius of tire in ft ");
normal = weight*cosd(theta);

%sum of forces on x' axis amd sum of moments
syms a F alpha
sumX = weight*sind(theta) - F == mass*a;
sumM = F*radius == mass*RG*RG*alpha;
noslip = a == radius*alpha;

sol = solve([sumX, sumM, noslip],[a,F,alpha]);
sprintf(" frictional force is %.2f lb\n normal force is %.2f lb\n acceleration of center %.2f ft/ss \n angular acceleration is  %.2f rad/ss", sol.F, normal, sol.a, sol.alpha) 
