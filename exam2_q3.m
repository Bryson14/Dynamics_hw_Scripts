%exam2 question 3

r = input("Whats the radius of curvature in feet: ");
w = input("Whats the weight/ force of the bike in lb. (hint, it doesn't matter): ");

%how fast can the bike travel on the curve without leaving the surface of
%the road
syms v
vmax = solve(v.^2 / r == 32.2, v);

%ft/s to mph
mph = vmax * 3600 / 5280