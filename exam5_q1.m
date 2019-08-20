%exam5-1
%17-15

t = input("thickness of plate in mm :")/1000;
l = input("length of side of square in m: ");
r = input("radius of circle in mm: ")/1000;
y = input('density of material kg/m^3: ');

%1/12 * m * a*a * b*b
%.5*m*r*r
d = (l/2)/cosd(45);
mRec = t*l*l*y;
mCir = pi*r*r*y*t;

Ig = mRec * 2*l.^2 /12 - .5*mCir*r.^2;
Io = Ig + (mRec-mCir)*d.^2;
sprintf("moment of inertia is %.3f kg*m*m", Io)

