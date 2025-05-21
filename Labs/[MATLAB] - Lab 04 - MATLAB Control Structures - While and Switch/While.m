  %First Code in the lab
x=2;
while x<=20 
    if rem(x,2)==0                         %Check if the number is even
        disp(x);
    end
            x=x+1;

end
 

N_Factorial=1;                              % Second Code for the lab
N_Input=input('Input your Number = ');      % User Input number   
while N_Input >= 1                              
N_Factorial= N_Factorial * N_Input;
N_Input=N_Input-1;
end
N_Factorial


