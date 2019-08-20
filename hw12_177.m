theta1 = input("component of transvrese in rad: ");
T = input("time measured in s: ");
R = input("radius of circle in m: ");

syms t
th(t) = theta1 * t.^2;
% r(th) = R * cos(th(t));

th(T)
firstdiff(t) = diff(th,t);
firstdiff(T);
secdiff = diff(firstdiff, t);

Ar = -R *(cos(th(T)) * firstdiff(T)^2 + sin(th(T))*secdiff) - 400*cos(th(T))*firstdiff(T)^2;
Ath = R * cos(th(T)) * secdiff + 2 * -R*sin(th(T))*firstdiff(T)*firstdiff(T);

sprintf("acc is %.3f", sqrt(Ar^2 + Ath^2))


