Myname= 'NourAldin';   % Create a char name
CharArr= 'MBD';        % Create a char name

FinalRes = Myname +""+CharArr;   % Concatenate the two chars name with method 1
disp(FinalRes);

FinalRes2=strcat(Myname,CharArr);   % Concatenate the two chars name with method 2
disp(FinalRes2);