a=input('Input the x distance (cm):');
b=input('Input the y distance (cm):');
h=input('Input the mesh size of h for each small area (cm):');
Ct=input('Input the top boundary(V): ');
Cb=input('Input the bottom boundary (V):');
Cl=input('Input the left boundary (V):');
Cr=input('Input the right boundary (V):');
%variables
m1=a/h;
m2=b/h;
number=[m1,m2];
hx=m1+1;
hy=m2+1;
z=zeros(hy,hx);
z(hy,:)=ones(1,hx)*Ct;
z(1,:)=ones(1,hx)*Cb;
z(:,1)=ones(hy,1)*Cl;
z(:,hx)=ones(hy,1)*Cr;
[y]=P5_function(number,z,hx,hy);
figure(1)
x1=linspace(0,a,hx)
y1=linspace(0,b,hy)
mesh(linspace(0,a,hx),linspace(0,b,hy),y)
axis([0,a+1,0,b+1,0,100])
xlabel('x(cm)')
ylabel('y(cm)')
zlabel('Electrical potentia (V)')
figure(2)
contour(x1,y1,y,50)
xlabel('x(cm)')
ylabel('y(cm)')