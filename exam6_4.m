%exam6-5

mass = input("mass of block in lb: ");
k = input("stiffness of spring lb/in: ");
velocity = input("upward velocity in ft/s: ") * 12;
distance = input("vertical displacement given in in: ");

f = 1/(2*pi) * sqrt(k/mass);

syms A t

% displacement(t) = A*sin(f*t);
% velocity(t) = A*f*cos(f*t);

eqn1 = distance == A*sin(f*t);
eqn2 = velocity == A*f*cos(f*t);
sol = solve([eqn1, eqn2], [A,t]);

max_dis_time = solve(0 == sol.A*f*cos(f*t), t);

sprintf("max displacement is %.3f ft", sol.A(1)*sin(f*max_dis_time)/1200) 
