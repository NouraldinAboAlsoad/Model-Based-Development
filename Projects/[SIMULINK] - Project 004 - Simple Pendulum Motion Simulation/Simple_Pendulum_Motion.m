L0 = 0;
g=9.81;
angular_displacement0= 5;
mdl = gcs;

for i=1 : 5

L0= i;
result= sim(mdl);

plot (result.logsout.get("angular_displacement").Values);
hold on;
plot (result.logsout.get("angular_velocity").Values);
legendarray{i} = "L0 = " + num2str(i);

end 
legend(legendarray);

