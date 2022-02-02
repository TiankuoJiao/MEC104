syms y(t)
Dy = diff(y);
w=1;
equation = diff(y,t,2) == (10*sin(w*t)-75*y)/3;
IC1 = y(0) == 0;%initialCondition
IC2 = Dy(0) == 0;
initialConditions = [IC1 IC2];
Sol(t) = dsolve(equation,initialConditions);
t=0:.01:20;
plot(t,Sol(t))
xlabel('Time(t)');
ylabel('y(t)');