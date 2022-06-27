/*

Deiondre Judd V. Nisay
LE 1
Functions:
myCombi
-Euler's Method
-Improved Euler's Method
-Runge Kutta

*/

function [a,b,c,d] = myCombi(y0,h)
    function dy = f(x,y)
        dy = y-x+1;
    endfunction
        x0=-3;
        xf=4.1;
        x(1)=x0;
        n=(xf-x0)/h;
        y1(1)=y0;
        y2(1)=y0;
        y3(1)=y0;
        
        for i = 1:n
            y1(i+1) = y1(i) + (h*(f(x(i),y1(i))));
            k1 = f(x(i),y2(i));
            yTemp = y2(i) + (h*(k1));
            x(i+1) = x(i)+h;
            k2 = f(x(i+1),yTemp);
            y2(i+1) = y2(i) + (h*(1/2)*(k1+k2));
            
            k1A = f(x(i),y3(i));
            k2A = f((x(i)) + (h/2) ,(y3(i))+((h/2)*k1A));
            k3A = f((x(i)) + (h/2) ,(y3(i))+((h/2)*k2A));
            k4A = f(x(i+1),(y3(i))+((h)*k3A));
            
            y3(i+1) = y3(i) + ((h/6)*(k1A + (2*k2A) + (2*k3A) + k4A));
            
            
            
        end
       
        
        
    a=x;
    b=y1;
    c=y2;
    d=y3;
        
endfunction


