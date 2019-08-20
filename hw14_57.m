%hw 14.57

m = input("Whats the mass of the collar in lbf: ");
v = input("Whats the velocity of the collar in ft/s: ");
s = input("What's the vertical distance to the pulley in ft: ");
d = input("Whats the distance between the pole and pulley in ft: ");

% power at the instant of collar moving

angle = atand(d / s);

Fup = m / cosd(angle);

P = Fup * v * cosd(angle);
sprintf("P at moment : %.3f lb*ft/s" , P)