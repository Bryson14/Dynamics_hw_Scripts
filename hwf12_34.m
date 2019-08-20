syms t
theta(t) = input("angular position coefficeint: ") * t.^(1.5);
r = input("coefficient of position: ");
time = input("time measured at: ");

R = time^3 * r;
Rd = r * 3 * time^2;
Rdd = r * 6 * time;

TH = theta(time);
thd(t) = diff(theta, t);
THD = thd(time);
thdd(t) = diff(thd,t);
THDD = thdd(time);

Ar = Rdd - R * THD^2;
Ath = R * THDD + 2 * Rd * THD;

sprintf("magnitude of acc is %.3f", sqrt(Ar^2 + Ath^2))

