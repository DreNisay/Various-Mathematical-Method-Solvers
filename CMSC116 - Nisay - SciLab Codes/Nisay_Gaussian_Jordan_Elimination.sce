/*

Deiondre Judd V. Nisay
Week 8 Assignment
Function:
-Gaussian-Jordan Elimination [ myGJE ]


*/

function myGJE

/*A=[1 2 1 4; 3 8 7 20; 2 7 9 23];*/
/*A=[3 -6 -2 1; 2 -4 1 17; 1 8 21 -9];*/
A=[2.0108672 -0.0054336 0 0 1.08672; -0.0054336 2.0108672 -0.0054336 0 0; 0 -0.0054336 2.0108672 -0.0054336 0; 0 0 -0.0054336 2.0108672 0.54336];



x=size(A);
c=x(2);
r=x(1);

firstRow=0;
tempRow=0;
counter=0;




subR=1;
noNumberChecker=0;
p4counter=1;




disp(A);


for i=1:c
    entry1=0;
    entry2=0;
    counter = counter + 1;
    m=0;
    temp=0;
    
    property3=1;
    
    
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
        if (A(j,i)~=0) then
            if (property3==1) then
                temp = A(j,i);
                A(j,:)=A(j,:)/temp;
                property3=0;
                
                if (p4counter>1)then
                    p4temp = p4counter;
                    while (p4temp>1)
                        p4temp=p4temp-1;
                        temp = A(p4counter-p4temp,i);
                        m=temp/A(p4counter,i);
                        tempRow= A(p4counter,:)*(-m);
                        
                        A(p4counter-p4temp,:)=A(p4counter-p4temp,:)+tempRow;
                        disp(A);
                    end
                end
                p4counter=p4counter+1;
                
            end
        end
        if (entry1==2) then
            
            temp = A(counter,i);
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
