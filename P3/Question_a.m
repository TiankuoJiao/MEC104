syms i(t) speed(t)
eqn1=0.003*diff(i,t,1)==-0.8*i-0.05*speed+20;
eqn2=0.00008*diff(speed,t)==.05*i;
Initial_condition1=i(0)==0;
Initial_condition2=speed(0)==0;
sol=dsolve([eqn1;eqn2],[Initial_condition1;Initial_condition2]);
fplot(sol.i,[0,0.3])
xlabel('time t')
ylabel('i(t)')
figure
fplot(sol.speed,[0,0.3])
xlabel('time t')
ylabel('Speed(t)')