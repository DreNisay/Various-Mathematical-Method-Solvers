/*

Deiondre Judd V. Nisay
Week 7 Assignment
Function:
-Gaussian Elimination [ myGE ]


*/

function myGE

/*A=[64 -57 97 -67 485; 92 77 -34 -37 486; 44 -34 53 -34 465; 27 57 -69 29 464];*/
A=[2.0245 -0.01225 0 0 2.45; -0.01225 2.0245 -0.01225 0 0; 0 -0.01225 2.0245 -0.01225 0; 0 0 -0.01225 2.0245 1.225];

x=size(A);
c=x(2);
r=x(1);

firstRow=0;
tempRow=0;
counter=0;


subR=1;
noNumberChecker=0;



disp(A);


for i=1:c
    entry1=0;
    entry2=0;
    counter = counter + 1;
    m=0;
    temp=0;
    
    for j=subR:r


        if (A(j,i) == 0) then
            
            if (entry1==0) then
                for k=j:r
                    
                    if (A(k,i)~= 0) then
                        if (entry2==0) then
                            firstRow=A(j,:);
                            tempRow=A(k, :);
                            A(k, :)=firstRow;
                            A(j, :)=tempRow;   
                            entry2=1;
                        end
                    end
                    
                end
                entry1 = 1;
            else
                entry1=1;
                noNumberChecker=1; 
            end
         
            
        
            
        end
        if (entry1==2) then
            
            temp = A(counter,i)
            m=(A(j,i))/(temp);
            tempRow=A(counter,:)*(-m);
          
            A(j,:)=A(j,:)+tempRow;
            noNumberChecker=0;
     
        end
        entry1=2; 
        
        disp(A);
    end   
    
    if (noNumberChecker==0) then
        subR = subR + 1;
    end
        
end



        
endfunction
