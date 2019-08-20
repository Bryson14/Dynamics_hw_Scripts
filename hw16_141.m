%16-141 

%works exactly right with the text book answer but not with Urroz's
%question. However, take the answer produced by this code and divide it by
%.65 and it gets pretty close. Good Luck ;)

w = input("angular velocity of bar AB in rad/s: ");
a = input("angular aceeleration of bar AB in rad/ss: ");
Lcd = input("length of bar CD in m: ");
Lac = input("length of bar AC in m: ");

vC = w * Lac;
wCD = vC / Lcd;

%relative acceleration
%aC = aA + OMEGA x Rc-a + OMEGA x OMEGA x Rc-a + 2 OMEGA x Vc-a + Ac-a
syms alphaCD alphaCA
alph = [0 0 a];
omg = [0 0 w];
eqns = [wCD.^2 alphaCD 0] == cross(alph, [Lac 0 0]) + cross(omg, cross(omg, [Lac 0 0])) + [alphaCA 0 0];
sol = solve(eqns, [alphaCD, alphaCA]);

sprintf("angular acceleration is %.3f rad/ss",sol.alphaCD)