figure
scat = scatter(1, Trondheim.B_eff_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim.B_eff_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim_eur.B_eff_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim_eur.B_eff_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

% CCS
scat = scatter(2, Trondheim_CCS.B_eff_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_CCS.B_eff_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_eur_CCS.B_eff_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_eur_CCS.B_eff_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

xticks([1 2]);

xticklabels({'Waste-to-energy', 'Waste-to-energy coupled to CCS'})
xlim([0 3])
ylabel('B_{eff max}')
box on