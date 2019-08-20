%16-93
%but really its 16-71

omegaAB = input("Angular Velocity at A: ");
L = input("distance L in mm: ");
dtop = 2 * L;
rtop = dtop /2;
rarm = L;
rleg = input("distance of leg of T to point P in mm: ");

vb = rarm * omegaAB;
omegaBD = vb /dtop;

%distance from Instantenous Center to P
distanceICtoP = rleg + tand(60) * rtop;

vleg = distanceICtoP * omegaBD;

sprintf("velocity of point p is %.2f m/s", vleg /1000)

