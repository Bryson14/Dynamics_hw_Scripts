%16_77

sun = input("angular velocity of the sun gear in rad/s: ");
rp = input("Radius of the planet gears in mm: ");
rs = input("Radius of sun gear in mm: ");
rRod = rs * 2 + rp * 2;

%omega * r = v

vsun = sun * rs;
omegap = vsun / (2 * rp);

%i don't understand why the edge velocity of sun is equal to the edge
%velocity of the rod. Wouldn't the rod be half as fast as the center or
%else the purpose of a planet gear system is useles.

omegaShaft = vsun / rRod;

sprintf("Angular velocity of rod is %.3f rad/s", omegaShaft)