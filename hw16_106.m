%16_106
%works for book , a little under Urroz's code (ie 29 - 35.7)
l = input("length R in m: ");
w = l / 4;
v = input("angular velocity of bar in rad/s: ");
a = input("angular acceleration of bar CW in rad/ss: ");

Vb = v * l;
Ab = cross([0 0 -a], [0 l 0]) - v.^2 * [0 l 0];

%find IC of the bar BC (fyi its below the bar not above it)
theta = atand(3 / 4); % angle of block v to horizonal
phi = 90 - theta; % angle of block v to vertical
IC_xpos = tand(phi) * w + l;
IC_c = .5 / cosd(phi);

syms Ac alpha %alpha stands for angular acceleration
eqns = Ac * [-4/5 -3/5 0] == Ab + cross([0 0 alpha],[-w -l 0]) - (Vb/IC_xpos).^2 * [-w -l 0];
sol = solve(eqns,[Ac, alpha]);

%sprintf("angular acceleration of bc is %.2f CCW rad/ss", sol.alpha)
sprintf("linear acceleration of c is %.2f m/ss", sol.Ac)