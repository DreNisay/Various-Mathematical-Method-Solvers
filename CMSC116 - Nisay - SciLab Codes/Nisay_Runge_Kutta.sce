/*

Deiondre Judd V. Nisay
Week 4 Assignment
Function:
-Runge-Kutta [ myRK ]


*/

function [a,b] = myRK(y0,h)
    function dy = f(x,y)
        dy = 0.0001*y^2 - 0.01*y;
    endfunction
        x0=0;
        xf=24;
        x(1)=x0;
        n=(xf-x0)/h;
        y(1)=y0;
        
        for i = 1:n
            k1 = f(x(i),y(i));
            k2 = f((x(i)) + (h/2) ,(y(i))+((h/2)*k1));
            k3 = f((x(i)) + (h/2) ,(y(i))+((h/2)*k2));
            x(i+1) = x(i)+h;
            k4 = f(x(i+1),(y(i))+((h)*k3));
            
            y(i+1) = y(i) + ((h/6)*(k1 + (2*k2) + (2*k3) + k4));
            

            
            
        end
    a=x;
    b=y;

        
endfunction
