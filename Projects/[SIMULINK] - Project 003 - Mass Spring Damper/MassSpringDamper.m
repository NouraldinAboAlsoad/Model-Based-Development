b=10;
x0=1;
k=400;
m=3;

mdl = gcs;

massValue= 1:2:11;

for i=1 : numel(massValue)

    m= massValue(i);
    result= sim(mdl);
    plot (result.logsout.get("x").Values);
    hold on;
    disp("Simlulation"+num2str(i)+"Complete");
    LegendLables{i} = "m = " + num2str(m);
end

legend(LegendLables);