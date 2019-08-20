%12-169

angV = input("angular velocity in rad/s: ");
r = input("radius of ball in m: ");
R = input("length of pin in m: ");

Ar = R * angV^2
Atheta = 2 * r * angV.^2

sprintf("magnitude of acc is %.2f", sqrt(Ar^2 + Atheta^2))