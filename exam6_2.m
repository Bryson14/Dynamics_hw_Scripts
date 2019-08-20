%exam6-3
%18-4

force = input("force of p in N: ");
mass = input("mass of reel in kg: ");
k_gyration = input("radius of gyration in m: ");
roller_spread = input("distance between rollers in m: ");
outer_radius = input("outer radius of reel in m: ");
inner_radius = input("inner radius of reel in m: ");
revolutions = input("number of revolutions made: ");

moment_inertia = .5 * mass * k_gyration^2;

syms angV
sol = solve(force * revolutions * 2*pi * inner_radius == moment_inertia * angV^2, angV);

sprintf("angular velocity is %.3f rad/s", abs(sol(1)))
