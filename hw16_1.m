%16-1

omegasquared = input("angular velocity coefficient of t^2: ");
omegaC = input("angular velocity coefficient of C: ");
t = input("time at point A: ");
r = input("rauis of disk in m: ");

syms T
angV = omegasquared * T.^2 + omegaC;
Alpha = diff(angV, T);

T = t;
At = subs(Alpha) * r;
An = subs(angV).^2 * r;
sprintf("magnitude of acceleration of A is %.3f m/ss",sqrt(At.^2 + An.^2))