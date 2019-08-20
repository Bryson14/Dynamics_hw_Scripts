%exam 2 question 2

v0 = input("Whats the initial velocity of the block: ");
k = input("Whats the spring constant in N/m: ");
mass = input("Whats the mass of the block in kg: ");
d1 = input("Whats the distance in meters between A and B: ");
mu = input("Whats the coefficient of friction: ");


% finding speed decrease from beginning until the block touches the spring
N = 9.81 * mass;
A0 = mu * 9.81;
v1 = sqrt(v0.^2 + 2 * -A0 * d1);

%finding distance traveled once contact with spring is made using energy
%of the spring and kenetic energy
syms x
displacement = solve(mass * v1.^2 == k * x.^2 + 2 * N * mu * x ,x)
