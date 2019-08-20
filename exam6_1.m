%exam6-2
%18-58

mass = input("mass of bar in kg: ");
lSpring = input("unstreteched length of spring in m: ");
lbar = input("length of bar in m: ");

moment_inertia = (1/12) * mass * lbar^2 + mass*(lbar/2)^2;

potential_e = mass * 9.81 * -1;

syms k
l_final_Spring = sqrt(lbar^2 + (lSpring + lbar)^2);
e_final_spring = .5 * k * (l_final_Spring-lSpring)^2;


K = solve(e_final_spring + potential_e == 0 , k);
sprintf("Stiffness of spring is %.3f N/m", K)