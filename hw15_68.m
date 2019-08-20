%15-68

m = input("Mass of ball in kg : ");
v = input("Initial velocity of wall in m/s : ");
angle = input("angle of ball: ");
vy = v * sind(angle);
vx = v * cosd(angle);
h = input("Height from where the ball was shot in m : ");
d = input("Distance from where the ball was shot in m : ");
e = input("coefficient of restitution: ");

%time to hit the wall
syms t 
hitWall = solve(d == vx * t,t);

%velocity y at wall hit
vYwall = vy - 9.81 * hitWall;

%distance up the wall
Y = h + vy * hitWall - .5 * 9.81 * hitWall.^2;

%definition of restitution
% the wall only rebounds in the x direction, so VY is unchanged after
% rebound
%e = vout / vin
vRx = e * vx;
vRebound = sqrt(vRx.^2 + vYwall.^2);
sprintf("Velocity after rebound %.2f m/s", vRebound)

