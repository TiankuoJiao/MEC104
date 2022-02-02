%Initial conditions
T1=20;
T0=-10;
R1=0.0036;
R2=0.401;
R3=0.0408;
R4=0.0038;
%Calculate the temperature and q
A=[R1+R2 -R1 0;R3 -R2-R3 R2;0 R4 -R3-R4];
B=[R2*T1;0;-R3*T0]
x=A\B
fprintf('T1=%f℃\n',x(1,1))
fprintf('T2=%f℃\n',x(2,1))
fprintf('T3=%f℃\n',x(3,1))
q=(x(1,1)-x(2,1))/R2