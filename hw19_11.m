%19_11

w = input("Enter the weight in lb: ");
TA = input("Enter TA in lb: ");
TB = input("Enter TB in lb: ");
t = input("Enter the time: ");
R = input("Enter the radius in ft: ");

Io = .5*(w/32.2)*R^2;

AngV = (0 + TB*t*R - TA*t*R)/Io;

sprintf("The angular velocity is %.2f rad/s", AngV)

