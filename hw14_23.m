%hw 14.23
m = input("Whats the mass of the block in kg: ");
v = input("what's the velocity of the block: ");
mu = input("Whats the coefficient of friction: ");
k = input("whats the spring constant in N/m: ");
d = input("whats the distance between the block and spring: ");


% finding speed decrease from beginning until the block touches the spring
N = 9.81 * m;
A0 = mu * 9.81; % this is the deacceleration due to the friction
v1 = sqrt(v.^2 + 2 * -A0 * d);

%finding distance traveled once contact with spring is made using energy
%of the spring and kenetic energy
syms x
displacement = solve(m * v1.^2 == k * x.^2 + 2 * N * mu * x ,x);

disCM = displacement * 100;
double(disCM)
