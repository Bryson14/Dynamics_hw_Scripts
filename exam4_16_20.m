%16-20
%exam4-1

syms t
z = input("coefficient of acceleration eq: ");
a(t) =  z * t.^3;
v0 = input("initial angular velocity of gear in rad/s: ");
time = input("at what time to calculate angular velocity: ");
Ra = input("radius of gear A in m: ");
Rb = input("radius of gear B in m: ");

integrated(t) = int(a,0,t);
Vaf = v0 + integrated(time);
Vbf = Vaf * Ra / Rb;
sprintf("angular velocity of B is %.2f rad/s", Vbf)