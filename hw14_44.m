%hw 14.44

m = input("Whats the mass of the car in Mg: ");
angle = input("Whats the angle of the slope in degrees: ");
v = input("Whats the velocity of the car in km /h: ");
ef = input("Whats the efficiency of the car engine as a decimal: ");

% find power output of car
% P = F * v

Nleft = m * 1000 * 9.81 * sind(angle);

P = Nleft * v / 3.6;
% from km/h to m /s

P2 = P / ef;
sprintf("Developed power %.3f KW" ,P2/1000)
