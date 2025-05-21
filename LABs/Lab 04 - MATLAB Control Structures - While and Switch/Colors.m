Color_Code= input('Input your Color Code:','s');


switch Color_Code
     case '#FF0000'
        disp ('The color is RED');
     case '#00FF00'
        disp ('The color is GREEN'); 
     case '#0000FF'
        disp ('The color is Blue');
     case '#000000	'
        disp ('The color is Black');
     case '#FFFF00'
        disp ('The color is Yellow');
    otherwise 
        disp ('Not Supported');
end