%19_36

m = input("Enter the mass in kg: ");
kz = input("Entert the radius of gyration in m: ");
mp = input("Enter the mass of the solat panels in kg: ");
omz = input("Enter the spin rate  about the z axis in rad/s: ");
d = input("Enter d value in m: ");
L = input("Enter L value in m: ");
H = input("Enter H value in m: ");

Iz = m*kz^2 + 2*(0.0833*mp*(H^2 + L^2) + mp*(.5*L + d)^2);

Izo = m*kz^2 + 2*(0.0833*mp*H^2 + mp*d^2);

om = (Iz*omz)/Izo




