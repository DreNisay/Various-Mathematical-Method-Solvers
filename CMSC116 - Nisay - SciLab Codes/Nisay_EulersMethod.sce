/*

Deiondre Judd V. Nisay
Week 3 Assignment
Functions:
-Euler's Method [ myEuler ]
-Improved Euler's Method [ myImprovedEuler]

*/

function [a,b] = myEuler(y0,h)
    function dy = f(x,y)
        dy = (x^2) + (y^2)-1;
    endfunction
        x0=0;
        xf=2;
        x(1)=x0;
        n=(xf-x0)/h;
        y(1)=y0;
        
        for i = 1:n
            y(i+1) = y(i) + (h*(f(x(i),y(i))));
            x(i+1) = x(i)+h;
            
        end
    a=x;
    b=y;
        
endfunction

function [a,b] = myImprovedEuler(y0,h)
    function dy = f(x,y)
        dy = (x^2) + (y^2);
    endfunction
        x0=0;
        xf=1;
        x(1)=x0;
        n=(xf-x0)/h;
        y(1)=y0;
        
        for i = 1:n
            
            k1 = f(x(i),y(i));
            yTemp = y(i) + (h*(k1));
            x(i+1) = x(i)+h;
            k2 = f(x(i+1),yTemp);
            y(i+1) = y(i) + (h*(1/2)*(k1+k2));
            
        end
    a=x;
    b=y;
        
endfunction

