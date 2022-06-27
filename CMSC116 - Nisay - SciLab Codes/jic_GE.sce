/*

Deiondre Judd V. Nisay
Week 7 Assignment
Function:
-Gaussian Elimination [ myGE ]


*/

function myGE

A=[2 8 3 2; 1 3 2 5; 2 7 4 8];
A=[3 -6 1 13 15; 3 -6 3 21 21; 2 -4 5 26 23];

x=size(A);
c=1;
r=x(1);

firstRow=0;
tempRow=0;
counter=0;



disp(A)


for i=1:c
    entry=0;
    counter = counter + 1;
    m=0;
    for j=1:r
       
        if (A(j,i) ~= 0) then
            
            if (entry==0) then
                firstRow=A(j,:);
                tempRow=A(counter, :);
                A(counter, :)=firstRow;
                A(j, :)=tempRow;   
                entry = 1;
            else
                m=A(j,i);
                tempRow=A(counter,:)*(-m);
                A(j,:)=A(j,:)+tempRow;
            end
            
        end
        disp(A);
    end   
    
end



        
endfunction
