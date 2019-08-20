%16-71

omegaAB = input("Angular Velocity at A: ");
dtop = input("distance from point B - D in mm: ");
rtop = dtop /2;
rarm = input("distance of small arm AB in mm: ");
rleg = input("distance of leg of T to point P in mm: ");

vb = rarm * omegaAB;
omegaBD = vb /dtop;

%distance from Instantenous Center to P
distanceICtoP = rleg + tand(60) * rtop;

vleg = distanceICtoP * omegaBD;

sprintf("velocity of point p is %.2f m/s", vleg /1000)

