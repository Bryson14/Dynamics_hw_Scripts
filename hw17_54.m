%17-54

m = input("mass of crate in lb: ");
a = input("angular acceleration in rad/ss: ");
d = input("length of connecting links in ft: ");

Friction = (m/32.2) * 2*a * cosd(30);
Normal = (m/32.2) * 2*a * sind(30) + m;

sprintf("sum of initial friction and normal forces are %.2f", Friction+Normal)