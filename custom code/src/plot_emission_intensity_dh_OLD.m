
figure
c=1;


% Trondheim, LF counterfactual
scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';


% Oslo, LF counterfactual
c=c+1;
scat = scatter(c,Oslo.SystExp.SFH_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo.SystExp.SFH_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo.SystExp.SFH_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo.SystExp.SFH_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP225.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP5.em_int_del_dh_WtE_lf_gCO2eq_per_kWh);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';


%ylim([0 10])
ylabel('gCO_{2}eq kWh^{-1}')
xticks([1:1:c])
xlim([0 c+1])
