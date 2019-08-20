%17-16
w = input("length of side of square in mm: ")/1000;
p = input("area density of material in kg/m^2: ");

massCir = (pi*w.^2*p);
massSqr = (w.^2*p);
Io = .5*massCir*w.^2 + massCir * w.^2 -(1/12)*massSqr*2*w.^2 - massSqr * w.^2;

sprintf("moment of inertia of plate is %.3f kg m^2", Io)