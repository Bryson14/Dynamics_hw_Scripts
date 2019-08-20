%ball drop

h0 = input("height of ball at drop: ");
h1 = input("height of ball after first bounce: ");

syms t t2
timeFalling = solve(.5 * 9.81 * t.^2 == h0, t);
v1 = 9.81 * timeFalling;

timeRising = solve(.5 * 9.81 * t2.^2 == h1, t2);
v2 = timeRising * 9.81;
res = v2/v1;

sprintf("coefficient of restitution is %.4f ", abs(res(1)))
