%exam5-3
%17-67

l = input("length of bar in m: ");
f = input("force applied at the end of the bar in N: ");
mass = input("mass of bar in kg: ");

Ig = mass*l*l/12 + mass*(l/2).^2;

alpha = (f*l + mass*9.81*l/2) / Ig;
sprintf("angular acceleration of rod is %.3f rad/ss", alpha)