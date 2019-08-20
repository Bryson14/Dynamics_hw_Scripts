% exam 2 q 4
mass = input("mass of the particle in kg: ");
angle = input("Angle of the arm in degrees: ");
angV = input("Angular Velocity of the arm in rad/s: ");
l = input("distance from arm to slot in m: ");

% force of the rod on the particle
r = l * secd(angle);
rd = l * secd(angle) * tand(angle) * angV;
rdd = l *( secd(angle).^3 * angV.^2 + secd(angle) * tand(angle).^2 * angV.^2);

Arad = rdd - r * angV.^2;
Atan = r * 0 + 2 * rd * angV;

syms n
syms f

N = solve(n * cosd(angle) - mass * 9.81 * cosd(angle) == mass * Arad, n )
F = solve(f - N * sind(angle) + mass * 9.81 * sind(angle) == mass * Atan ,f)