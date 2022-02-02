R=0.8;L=0.003;c=0;
K_T=0.05;K_e=0.05;J=8e-5;
A=[-R/L,-K_e/L;K_T/J,-c/J];
B=[1/L;0];
C1=[0 1];
C2=[1 0];
D=[0];
sys1=ss(A,B,C1,D);
sys2=ss(A,B,C2,D);
time=0:0.0001:0.3;
k=0;
for t=0:0.0001:0.3
    k=k+1
    if t<0.05
        v(k)=400*t;
    elseif t<=0.2
        v(k)=20;
    elseif t<=0.25
        v(k)=-400*(t-0.2)+20;
    else
        v(k)=0;
    end
end
plot(time,v);
xlabel('t(s)');
ylabel('Applied voltage(V)');
axis([0,0.3,0,24]);
figure
[y,t]=lsim(sys2,v,time);
plot(time,y);
xlabel('t(s)');
ylabel('Current(A)');
axis([0,0.3,-50,50]);
figure
[y,t]=lsim(sys1,v,time);
plot(time,y);
xlabel('t(s)');
ylabel('Speed(rad/s)');
axis([0,0.3,0,500]);
