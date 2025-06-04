Ku=1;
TimeCon=1;

mdl = gcs;


for i=1:5
Ku= i*Ku;
TimeCon = i*TimeCon*2;
result= sim(mdl);
plot(result.logsout.get("T(t)").Values);
hold on
%legend_Ku{i}= "Ku = " + num2str(Ku);
%legend_TimeCon{i}= "Time Con = " + num2str(TimeCon);
legend_General{i} = "Ku = " + num2str(Ku) + ",Time Con = " + num2str(TimeCon);
disp ("Simulation for the Ku " + num2str(i)+ "is Completed");
disp ("Simulation for the TimeCons " + num2str(i)+ "is Completed");
end
%legend(legend_TimeCon, 'Location', 'southeast');
%legend(legend_Ku, 'Location', 'northeast');  
% Overwrite to the first So I changed the approach
legend(legend_General);