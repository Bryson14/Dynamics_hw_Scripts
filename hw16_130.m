%16-130 $ 
l = input("length of bar AB in ft: ");
v = input("angular velocity of boom A in rad/s: ");
a = input("angular acceleration of boom A in rad/ss: ");
c = input("constant velocity of extension of boom in ft/s: ");

vtotal = sqrt((v*l).^2+ c.^2);
%sprintf("magnitude of velocity at B %.2f ft/s", vtotal)

%relative acceleration equation
%Ab = Aa + omegaA x Ra + omegaA x(omegaA x Ra) + 2omegaA x Vrel + Arel
alphaA = [0 0 -a];
Ra = [0 l 0];
omegaA = [0 0 -v];
Ab = 0 + cross(alphaA, Ra) + cross(omegaA,cross(omegaA, Ra)) + 2 * cross(omegaA, [0 c 0]) + 0;
sprintf("magnitude of acceleration at b is %.2f ft/s", sqrt(Ab(1).^2+Ab(2).^2))