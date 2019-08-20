% hw 14_12
m = input ("Whats the mass of the car in megagrams MG: ");
xmax = input ("What's the max deflection allowed for the spring: ");
v = input("what's the velocity of the car: ");


% find k of spring to stop the car in time, output in MN / m^2
%kinetic energy
Ek = .5 * m * 1000 * v.^2;

% kinetic energy - spring potential energy = 0
syms k
K = solve(Ek == xmax.^3 * k / 3, k);

% stands for special print formating
sprintf("%.4f MN/m^2 ", K/1000000)
