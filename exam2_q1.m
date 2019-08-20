% exam 2 question 1
weightB = input("what is the weight of block b in lb: ");
massB = weightB / 32.2
theta = input("What is the angle of the slope: ");
mu = input("What's the coefficient of friction: ");
weightA = input("How much bigger is block A than block B: ") * weightB;
massA = weightA/32.2;



% sum of forces in y' axis of block A
syms n 
N = solve(0 == n - weightA * cosd(theta),n);

% sums of forces in x' axis of block B
% system of equations
syms T a b
eqn1 = -2*T - N * mu + weightA * sind(theta) == massA * a;
eqn2 = - T + weightB == massB * b;
eqn3 = a * 2 == b;

sol = solve([eqn1,eqn2,eqn3], [T,a,b] );
Tsol = sol.T;
asol = sol.a;
bsol = sol.b

%magic equation
accB = 32.2 * (10 * weightB * sind(theta) - 10 * mu * weightB * cosd(theta) - weightB)/ (6 * weightB)