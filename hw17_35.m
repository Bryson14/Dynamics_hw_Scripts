%17-35

w = input("weight of desk in lb: ");
f = input("force of push in lb: ");
mu = input("coefficient of friction: ");
L1 = input("distance L1 in ft: ");
L2 = input("distance L2 in ft: ");
L3= input("distance of L3 in ft: ");

syms Na Nb A
sumX = f * cosd(30) - mu * (Na + Nb) == w * A / 32.2;
sumY = Na + Nb - f * sind(30) - w == 0;
sumM = f * cosd(30)*(L1+L2) + w*L3 - Nb*2*L3 == 0;

sol = solve([sumX, sumY, sumM], [Na, Nb, A]);
sprintf("acceleration of desk is %.2f ft/ss", sol.A)