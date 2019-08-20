%F14-10
m = input("mass of box in kg: ");
k = input("coefficient of friction: ");
v = input("velocity of box: ");
angle = input("angle of slope: ");


N = m * 9.81 * cosd(angle);

%sum of forces in x' direction
syms f
force = solve(N * k + sind(angle) * m * 9.81 == f,f);

sprintf("power of force on the box is %.1f W", force * v)