
figure
c=1;

%% Trondheim
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Trondheim 90
c=c+1;
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim_90.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim_90.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Trondheim 80
c=c+1;
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim_80.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim_80.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';




%% OSLO

% Oslo, LF counterfactual
c=c+1;
scat = scatter(c,Oslo.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';


%% OSLO 90

% Oslo, LF counterfactual
c=c+1;
scat = scatter(c,Oslo_90.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo_90.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% OSLO 80%

% Oslo, LF counterfactual
c=c+1;
scat = scatter(c,Oslo_80.SystExp.SFH_NOR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80.SystExp.AB_NOR_HP225.B_1_WtE_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80.SystExp.SFH_NOR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80.SystExp.AB_NOR_HP5.B_1_WtE_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur.SystExp.SFH_EUR_HP225.B_1_WtE_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur.SystExp.AB_EUR_HP225.B_1_WtE_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur.SystExp.SFH_EUR_HP5.B_1_WtE_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur.SystExp.AB_EUR_HP5.B_1_WtE_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo_80.SystExp.SFH_NOR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80.SystExp.AB_NOR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80.SystExp.SFH_NOR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80.SystExp.AB_NOR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur.SystExp.SFH_EUR_HP225.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur.SystExp.AB_EUR_HP225.B_1_WtE_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur.SystExp.SFH_EUR_HP5.B_1_WtE_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur.SystExp.AB_EUR_HP5.B_1_WtE_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';





%ylim([0 10])
ylabel('B_{1}')
xticks([1:1:c])
xlim([0 c+1])
box on
xticklabels({'Trondheim LF', 'Trondheim WI', 'Trondheim 90% ben. LF', 'Trondheim 90% ben. WI', 'Trondheim 80% ben. LF', 'Trondheim 80% ben. WI'...
    'Oslo LF', 'Oslo WI', 'Oslo 90% ben. LF', 'Oslo 90% ben. WI', 'Oslo 80% ben. LF', 'Oslo 80% ben. WI'})

%% NEW FIG
figure 
c=1;

%% Trondheim CCS
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Trondheim 90 CCS
c=c+1;
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Trondheim 80 CCS
c=c+1;
% Trondheim, LF counterfactual
scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI counterfactual'
c=c+1;
scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Trondheim, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Trondheim_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Oslo CCS
% Oslo, LF counterfactual
c=c+1;
scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Oslo90 CCS
c=c+1;
% Oslo, LF counterfactual
scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_90_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

%% Oslo 80 CCS
c=c+1;
% Oslo, LF counterfactual
scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_lf);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_lf);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_lf);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_lf);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_lf);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_lf);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI counterfactual'
c=c+1;
scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

% Oslo, WI CCS counterfactual'
c=c+1;
scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "*";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_CCS.SystExp.SFH_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_CCS.SystExp.AB_NOR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "x";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP225.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "o";
scat.MarkerEdgeColor = 'red';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.SFH_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'blue';

scat = scatter(c,Oslo_80_eur_CCS.SystExp.AB_EUR_HP5.B_1_WtECCS_wi_no_energy_rec_CCS);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'red';

ylabel('B_{1}')
xticks([1:1:c])
xlim([0 c+1])
box on
xticklabels({'Trondheim CCS LF', 'Trondheim CCS WI', 'Trondheim CCS WI-CCS',...
    'Trondheim CCS 90% ben.  LF', 'Trondheim CCS 90% ben. WI', 'Trondheim CCS 90% ben. WI-CCS',...
   'Trondheim CCS 80% ben. LF', 'Trondheim CCS 80% ben. WI', 'Trondheim CCS 80% ben. WI-CCS',...
   'Oslo CCS LF', 'Oslo CCS WI', 'Oslo CCS WI-CCS',...
    'Oslo CCS 90% ben. LF', 'Oslo CCS 90% ben. WI', 'Oslo CCS 90% ben. WI-CCS',...
   'Oslo CCS 80% ben. LF', 'Oslo CCS 80% ben. WI', 'Oslo CCS 80% ben. WI-CCS'})

%ylim([0 70])