%f14-18
%sliding rod held by spring
m = input("mass of collar in kg: ");
va = input("velocity of collar at A in m/s: ");
l = input("unstretched length of spring in m: ");
k = input("spring constant in N/m: ");
r = input("radius of turn: ");
Ay = input("vertical distance from point a to bar: ");

%conservation of energy
%EVa + ETa = EVb + ETb
Vfinal = sqrt((.5 * m * va.^2 + .5 * k * (Ay - l).^2 - .5 * k * (sqrt(r.^2 + (r - Ay).^2) - l).^2 - m * 9.81 * - r) / (.5 * m));
Vfinal = sprintf("final Velocity of collar is %.3f m/s", abs(Vfinal(1)))