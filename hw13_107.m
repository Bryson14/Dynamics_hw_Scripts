weight = input("weight of the particle: ");
coef = input("coefficient for the limacon r = (x + cos(theta)) : ");
coefA = input("coefficient for Angle function of the arm: ");
time = input("taken at time in seconds: ");


mass = weight / 32.2;

syms t

theta = coefA * time.^2;
thetad = time * 2 *coefA;
thetadd = coefA * 2;

cosd(theta)
r = coef + cos(theta);
rd = -sin(theta) * thetad;
rdd = -cos(theta) * thetad.^2 - sin(theta) * thetadd;

Ar = rdd - r * thetad.^2;
Ath = r * thetadd + 2 * rd * thetad;

syms x
alpha = 90 - atand(r /sin(theta));

syms f
syms n
N = solve(-n * cosd(alpha) == mass * Ar, n)
F = solve(f - N * sind(alpha) == mass  * Ath,f)

