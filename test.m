syms x
eqn(x) = input("eqns: ");

syms y 
sol = int(eqn(x), 0 , y);
sol2(y) = sol;

sol2(5)

syms a b
eqn1(a, b) = a.^2 + 3*b.^3;
int(eqn1, a, b, a)