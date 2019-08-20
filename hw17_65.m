%17-65

DsA = input("Weight of disk A in lb: ");
DsB = input("Weight of disk B in lb: ");
AnA = input("Angular acceleration at A in rad/s^2: ");
Ra = input("Radius of disk A in ft: ");
Rb = input("Radius of disk B in ft: ");
g = 32.2;

AnB = Ra*AnA/Rb;

Fd = (.5*(DsB/g)*(Rb^2)*AnB)/Rb;

M = (.5*(DsA/g)*(Ra^2)*AnA) + (Fd*Ra);

sprintf("The required moment is: %.3f", M)
