%exam6-4
%19-9

weight = input("weight of disk in lb: ");
mass = weight / 32.2;
force = input("force of p in lb: ");
radius = input("radius of disk in ft: ");
time = input("seconds that force is applied: ");

I = .5 * mass * radius^2;
rad_of_gyration = (I/mass)^(1/2);

syms VELOCITY
ang_v = solve(force * radius * time == .5 * mass * radius^2 * VELOCITY, VELOCITY);

sprintf("angular velocity is %.3f rad/s", ang_v)