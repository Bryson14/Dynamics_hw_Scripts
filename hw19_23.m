
%19_23

m = input("Enter the mass in kg: ");
om = input("Enter the omega value in rad/s: ");
v = input("Enter the velocity in m/s: ");
uk = input("Enter the coefficient of friction: ");
theta = input("Enter theta: ");
R = input("Enter the radius: ");
g = 9.81;

syms t vg

eqn1 = m*v+m*g*sind(theta)*t-m*g*cosd(theta)*uk*t==m*vg;
eqn2 = (-m)*R^2*om+m*g*cosd(theta)*uk*R*t==m*R^2*(vg/R);

sol = solve([eqn1, eqn2], [t, vg]);

tSol = sol.t;
vgSol = sol.vg;

sprintf("Hoop rolls for %.2f seconds", tSol)
