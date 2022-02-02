%Simplify the equation
f=@(t,theta,a) [theta(2);a(t)*cos(theta(1))-9.81*sin(theta(1))];
a=@(t) 5;
[t1,y1]=ode45(@(t,theta) f(t,theta,a),[0 10],[0.5;0]);
plot(t1,y1(:,1));
xlabel('Time(t)');
ylabel('Theta(t)');
figure
%Simplify the equation
f=@(t,theta,a) [theta(2);a(t)*cos(theta(1))-9.81*sin(theta(1))];
a=@(t) 5;
[t2,y2]=ode45(@(t,theta) f(t,theta,a),[0 10],[3;0]);
plot(t2,y2(:,1));
xlabel('Time(t)');
ylabel('Theta(t)');
figure
% Simplify the equation
f=@(t,theta,a) [theta(2);a(t)*cos(theta(1))-9.81*sin(theta(1))];
a=@(t) 0.5*t;
[t3,y3]=ode45(@(t,theta) f(t,theta,a),[0 10],[3;0]);
plot(t3,y3(:,1));
xlabel('Time(t)');
ylabel('Theta(t)');




