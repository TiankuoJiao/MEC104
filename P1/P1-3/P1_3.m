mg=1
A=[1/sqrt(35) -3/sqrt(34) 1/sqrt(42);
   3/sqrt(35) 0 -4/sqrt(42);
   5/sqrt(35) 5/sqrt(34) 5/sqrt(42)]
b=[0 0 mg]
T=A\b'
fprintf('T1=%f\n',T(1,1))
fprintf('T2=%f\n',T(2,1))
fprintf('T3=%f\n',T(3,1))
fprintf('T1=%fmg\n',T(1,1))
fprintf('T2=%fmg\n',T(2,1))
fprintf('T3=%fmg\n',T(3,1))
