Person.Name = 'Medhat';   % Create structure with person and field called Name and put Medhat inside it
Person.Age = '35';        % Create field called Age and store 35 on it

Address.City= 'Alexandria';     % Create Address structure with field city and put Alexandria inside it
Address.Street='Sidi beshir';   % Put another filed called Street inside the Address Struct

Person.Address = Address;       % Put the struct Address inside the Person Struct

disp(Person);
disp(Person.Address);