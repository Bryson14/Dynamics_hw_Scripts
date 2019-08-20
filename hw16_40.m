% 16-40

theta = input("what is theta in degrees: ");
a = input("what is the acceleration in m/s^2: ");
v = input("what is the veloctity in m/s: ");
R = input("what is the R in mm: ") / 1000;

omega = v/(R * sind(theta));

alpha = ((a/R) - cosd(theta) * (omega).^2)/sind(theta);

sprintf("Angular Velocity of link AB %.2f rad/ss",abs(alpha))