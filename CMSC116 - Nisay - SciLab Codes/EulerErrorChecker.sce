/*

Deiondre Judd V. Nisay
LE1
Functions:
-Euler's Method's Method Error Checker 

*/

function [a,b,c] = myEulerError(y0,h)
    function dy = f(x,y)
        dy = (x^2) + (y^2) - 1;
    endfunction
        x0=0;
        xf=2;
        x1(1)=x0;
        x2(1)=x0;
        n=(xf-x0)/h;
        y1(1)=y0;
        y2(1)=y0;
        eTemp(1)=0;
        xTemp=0;
        counter=1;
        
        while (xTemp==0)
        
            for i = 1:n
                y1(i+1) = y1(i) + (h*(f(x1(i),y1(i))));
                x1(i+1) = x1(i)+h;
                xTemp = xTemp + 1;
            end
            
            h=h/2;
            
            for i = 1:n
                y2(i+1) = y2(i) + (h*(f(x2(i),y2(i))));
                x2(i+1) = x2(i)+h;
            end
            
            
            
            if ((abs((y2(i+1)-y1(i+1))/y1(i+1))) >= 0.001) then
                
                xTemp = 0;
                eTemp(counter)= abs((y2(i+1)-y1(i+1))/y1(i+1));
                counter=counter+1;         
                   
            end
            
        end
        
    a=x1;
    b=y1;
    c=eTemp;
        
endfunction
