%17-58

m = input("Mass of plate in kg: ");
l = input("Length of sides in meters: ");
g = 9.81;

ig = (1/12)*m*(l^2 + l^2);

syms anac

accel = solve(-m*g*.5*l==-m*(sqrt((.5*l)^2+(.5*l)^2)).^2*anac-ig*anac,anac);

Ax = m*accel*(sqrt((.5*l)^2 + (.5*l)^2))*cosd(45);
Ay = -m*accel*(sqrt((.5*l)^2 + (.5*l)^2))*sind(45) + m*g;

react = sqrt(Ax^2 + Ay^2);
sprintf("The sum of the reactions are: %.3f", react)
