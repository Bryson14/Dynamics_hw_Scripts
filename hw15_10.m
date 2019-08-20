%15-10
m = input("mass of crate in kg: ");
v = input("speed of crate in m/s: ");
t = input("time period in s: ");
mu = input("coefficient of friction: ");

%sum of the forces in the y and x direction in terms of conservation of
%momentum
syms P
eqn1 = m * v == t * (-cosd(30) * P - mu * (m * 9.81 - sind(30) * P));
sol = -solve(eqn1,P);
sprintf("The magnitude of P is %.2f N ", sol )

