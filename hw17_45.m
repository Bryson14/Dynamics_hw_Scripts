%17-45

m = input("mass of trailer gate in Mg: ");
a = input("acceleration of truck in m/ss: ");
C = input("distance from point c to CG: ");
A = input("distance from point a to CG: ");


syms T cY cX
sumX = m * a == cosd(15) * T * + cX;
sumY = m + T * sind(15) - cY == 0;
sumM = m*9.81*C*cosd(45) +m*a*C*sind(45) - T*cosd(15) * (C+A)*cosd(45) == 0;

sol = solve([sumX, sumY, sumM], [cX, cY, T]);
sprintf("tension is %.2f Kn", sol.T) 
%syms T
%sumM = m*9.81*C*cosd(45) - T*cosd(15) * (C+A)*cosd(30) == 0;
