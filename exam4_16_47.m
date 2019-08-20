%exam4-2
%16-47

theta = input("What is the theta: ");
angV = input("What is the angular velocity of the disk: ");
r = input("What is the radius of the disk in mm: ")/1000;

v = r * angV.^2 * cosd(theta);
sprintf("velocity is %.3f", v)