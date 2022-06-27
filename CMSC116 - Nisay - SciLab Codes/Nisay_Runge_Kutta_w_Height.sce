/*

Deiondre Judd V. Nisay
Week 4 Assignment
Function:
-Runge-Kutta [ myRK ]


*/

function [a,b,c] = myRKwHeight(y0,z0,h)
    function dy = f(x,y)
        dy = (-(0.04*y))-9.8;
    endfunction
        x0=0;
        xf=12;
        x(1)=x0;
        n=(xf-x0)/h;
        y(1)=y0;
        z(1)=z0;
        
        for i = 1:n
            k1 = f(x(i),y(i));
            k2 = f((x(i)) + (h/2) ,(y(i))+((h/2)*k1));
            k3 = f((x(i)) + (h/2) ,(y(i))+((h/2)*k2));
            x(i+1) = x(i)+h;
            k4 = f(x(i+1),(y(i))+((h)*k3));
            
            y(i+1) = y(i) + ((h/6)*(k1 + (2*k2) + (2*k3) + k4));
            
            z(i+1)= z(i)+ (h*(y(i)))+ ((1/2)*(f(x(i),y(i)))*h^2);
            
            
        end
    a=x;
    b=y;
    c=z;
        
endfunction
