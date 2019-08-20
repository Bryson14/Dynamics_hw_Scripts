%hw17_5

y = input("specific weight of the material in lb/ft^3: ");
h = input("height of H: ");
l = input("length of body on x axis: ");

k = h.^3/l;
syms x
H = (k * x)^(1/3);
%Ix disk = .5 * m * r^2
%r disk = h
%int(.5*m*h^2,0,l) -> int(.5 * y*dx*pi*h^2 * h^2, 0 , 1)
Ix = int(.5 * H.^2 * pi * y *H.^2, 0, l);
M = int(H.^2 * pi * y, 0 , l);

sprintf("Radius of gyration is %.3f in", sqrt(Ix/M))