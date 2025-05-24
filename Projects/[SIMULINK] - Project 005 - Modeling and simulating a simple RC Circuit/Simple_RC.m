C=1e-6;
R=1e3;

mdl = gcs;

result= sim(mdl);

plot(result.logsout.get("Vc").Values);