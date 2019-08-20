%15-43

mBullet = input("mass of bullet in g: ");
v0 = input("velocity of bullet in m/s: ");
mBlock = input("mass of block in kg: ");
mu = input("coefficient of friction: ");
N = (mBlock + mBullet / 1000) * 9.81;
Ffriction = N * mu;

%at impact, they are traveling with the same speed
syms v
v1 = solve(mBullet * v0 / 1000 + mBlock * 0 == (mBlock + mBullet/1000) * v,v);

%mv1 + f * t = mv2
syms t v
v_t = solve((mBlock + mBullet / 1000) * v1 - mu * N * t == (mBlock + mBullet/1000) * v, v);
tStop = solve(v_t == 0,t);

%now that we have the time it took for the bullet and block to stop, then
%we can find displacement by ds = vdt

s(t) = int(v_t, 0 , t);

sprintf("The block and bullet stop in %.2f m",s(tStop))