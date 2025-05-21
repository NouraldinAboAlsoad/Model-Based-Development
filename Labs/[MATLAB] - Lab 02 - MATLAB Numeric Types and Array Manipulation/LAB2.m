intVar = int8 (5);           % integar Var with value 5 and it type is 8 bit
doubleVar = 3.14525;         % double var with direct value
disp(class (intVar))        % display the type of the var using Class Function
disp(class (doubleVar))     % display the type of the var using Class Function

evenNumbers = 2:2:10        %Create a row vector containing 5 even numbers (2, 4, 6, 8, 10).
primeNumbers= [2;3;5;7;11]  %Create a column vector containing 5 prime numbers(2, 3, 5, 7, 11).



identityMatrix = eye(3)      % Create a 3x3 identity matrix using a specialized matrix function.
magicSquare = magic(2)       % Create a 2x2 magic square matrix using a specialized matrix function.
 
combinedMatrix = cat (2,evenNumbers,primeNumbers.')
%Concatenate the evenNumbers vector horizontally with the primeNumbers vector 
% to create a new row vector combinedVector.
