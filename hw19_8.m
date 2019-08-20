%19_8

w = input("Enter the weight of the assembly in lbs: ");
kG = input("Enter the radius of gyration in ft: ");
ke = input("Enter the kinetic energy in ft*lb: ");
h1 = input("enter the h1 measurement in ft: ");
h2 = input("Enter the h2 measurement in ft: ");
R = input("Enter the Radius in ft: ");

Ig = kG^2*(w/32.2);

om = (sqrt(322)*sqrt(ke))/sqrt(5*R^2*w+10*R*w*(h2-h1)+5*h2^2*w-10*h2*h1*w+5*h1^2*w+161*Ig);

vg = om*(R+(h2-h1));

ans = (w/32.2)*vg;

sprintf("The linear momentum is %.2f slug*ft/s", ans)

