% Create a cell array containing various data types
myCell = {122,1:10,'MBD Char',"Matlab String",{1 , 'a'},struct('name','NourEldin')};


for i=1 : length(myCell)
    disp(myCell{i});      % Access and display specific elements within the cell array
end



