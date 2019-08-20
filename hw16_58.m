%16-58

v = input("velocity of block C: ");
Lab = input("length of arm AB: ");
Lbc = input("Length of arm BC: ");
angle = input("Angle between the two arms: ");

rcb = [Lbc * cosd(angle) Lbc * sind(angle)];

%Vc = Vb + Omega_bc cross rcd

omega = v / Lab;
sprintf("angular velocity is %.3f rad/s", omega)