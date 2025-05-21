Trip_Method= input('Input your transportation Method:  ','s');
N_Miles= input('Input your Travel Miles:  ');


switch Trip_Method
    case 'car'
        disp ('The Car Cost for the mile = 2$');
        Total_cost = N_Miles*2
    case 'train'
        disp ('The train Cost for the mile = 1$');
        Total_cost = N_Miles*1
     case 'bus'
        disp ('The bus Cost for the mile = 1.5$');
        Total_cost = N_Miles*1.5
    case 'airplane'
        disp ('The Airplane Cost for the mile = 5$');
        Total_cost = N_Miles*5
    otherwise 
        disp ('Not Supported');
end


      