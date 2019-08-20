%hw17-10
plateW = input("weight of plate in kg: ");
rodW = input("weight of rod in kg: ");
plateR = input("Diameter of plate in m: ");
rodL = input("length of rod in m: ");

%Io = sum(Ig + mD^2)
Io = (1/12) * rodW * rodL.^2 + rodW * (rodL/2).^2 + (1/2) * plateW * (plateR/2).^2 + plateW * (rodL + plateR/2).^2;
r = sqrt(Io / (plateW + rodW));
sprintf("radius of gyration is %.3f m", r)