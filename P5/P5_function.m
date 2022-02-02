function [y]=P5_function(number,z,hx,hy)
omega=2/(1+sqrt(1-((cos(pi/number(1,1))+cos(pi/number(1,2)))/2)^2));
y=z;
Tol=100;
tol=0;
counter=0;

while(Tol>0.00001)
    counter=counter+1;
    Tol=0;
    for j=2:hy-1
        for k=2:hx-1
            y(j,k)=z(j,k)+omega*(z(j,k+1)+z(j+1,k)+y(j-1,k)+y(j,k-1)-4*z(j,k))/4;
            tol=abs(y(j,k)-z(j,k));
            if(tol>Tol)
                Tol=tol;
            end
        end
    end
    z=y;
end

disp('The number of cycles of iterative method is: ')
disp(counter)
    