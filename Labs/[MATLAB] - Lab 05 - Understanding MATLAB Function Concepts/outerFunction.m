function outerFunction
    num1= input('Enter your first number= ' );
    num2= input('Enter your second number= ' );
    result= innerFunction(num1,num2);
    disp(['The Sum of the INPUTs = ',num2str(result)]);
    
    function sum= innerFunction (INP1 , INP2)
    sum= INP1 + INP2;
    end


end