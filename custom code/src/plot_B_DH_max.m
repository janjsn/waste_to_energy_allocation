
cities = {'Trondheim', 'Oslo'};
shares = {'','90','80'};
el = {'','eur'};
wt = {'','CCS'};
vars = {'B_dh_max_gshp_cop5','B_dh_max_gshp_cop5'};

figure

for i = 1:length(cities)
    this_city = cities{i};
    for j = 1:length(shares)
        for k = 1:length(el)
            for l = 1:length(wt)
                for m = 1:length(vars)
                    



                end
            end
        end
    end
end
    
%% Trondheim
scat = scatter(1, Trondheim.B_dh_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim.B_dh_max_gshp_cop5);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim_eur.B_dh_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(1, Trondheim_eur.B_dh_max_gshp_cop5);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Trondheim 90%
scat = scatter(2, Trondheim_90.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_90.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_90_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(2, Trondheim_90_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Trondheim 80%
idx_Trd80 = 3;
scat = scatter(idx_Trd80, Trondheim_80.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80, Trondheim_80.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80, Trondheim_80_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80, Trondheim_80_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Trondheim CCS
idx_Trd_CCS = 4;
scat = scatter(idx_Trd_CCS, Trondheim_CCS.B_dh_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd_CCS, Trondheim_CCS.B_dh_max_gshp_cop5);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd_CCS, Trondheim_eur_CCS.B_dh_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd_CCS, Trondheim_eur_CCS.B_dh_max_gshp_cop5);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Trondheim 90% CCS
idx_Trd90_CCS = 5;
scat = scatter(idx_Trd90_CCS, Trondheim_90.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd90_CCS, Trondheim_90.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd90_CCS, Trondheim_90_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd90_CCS, Trondheim_90_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Trondheim 80% CCS
idx_Trd80_CCS = 6;
scat = scatter(idx_Trd80_CCS, Trondheim_80.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80_CCS, Trondheim_80.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80_CCS, Trondheim_80_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Trd80_CCS, Trondheim_80_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';


%% Oslo
idx_Oslo = 7;
scat = scatter(idx_Oslo, Oslo.B_dh_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo, Oslo.B_dh_max_gshp_cop5);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo, Oslo_eur.B_dh_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo, Oslo_eur.B_dh_max_gshp_cop5);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Oslo 90%
idx_Oslo90 = 8;
scat = scatter(idx_Oslo90, Oslo_90.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90, Oslo_90.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90, Oslo_90_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90, Oslo_90_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Oslo 80%
idx_Oslo80 = 9;
scat = scatter(idx_Oslo80, Oslo_80.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80, Oslo_80.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80, Oslo_80_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80, Oslo_80_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Oslo CCS
idx_Oslo_CCS = 10;
scat = scatter(idx_Oslo_CCS, Oslo_CCS.B_dh_max_ashp_cop225);
hold on
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo_CCS, Oslo_CCS.B_dh_max_gshp_cop5);
hold on
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo_CCS, Oslo_eur_CCS.B_dh_max_ashp_cop225);
hold on
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo_CCS, Oslo_eur_CCS.B_dh_max_gshp_cop5);
hold on
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Oslo 90% CCS
idx_Oslo90_CCS = 11;
scat = scatter(idx_Oslo90_CCS, Oslo_90.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90_CCS, Oslo_90.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90_CCS, Oslo_90_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo90_CCS, Oslo_90_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

%% Oslo 80% CCS
idx_Oslo80_CCS = 12;
scat = scatter(idx_Oslo80_CCS, Oslo_80.B_dh_max_ashp_cop225);
scat.Marker = "*";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80_CCS, Oslo_80.B_dh_max_gshp_cop5);
scat.Marker = "x";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80_CCS, Oslo_80_eur.B_dh_max_ashp_cop225);
scat.Marker = "o";
scat.MarkerEdgeColor = 'black';

scat = scatter(idx_Oslo80_CCS, Oslo_80_eur.B_dh_max_gshp_cop5);
scat.Marker = "diamond";
scat.MarkerEdgeColor = 'black';

ylim([-0.5 1.5]);

xticks([1:1:12]);
xticklabels({'Trondheim', 'Trondheim - 90% beneficial', 'Trondheim - 80% beneficial',...
    'Trondheim CCS', 'Trondheim CCS - 90% beneficial', 'Trondheim CCS - 80% beneficial',...
    'Oslo', 'Oslo - 90% beneficial', 'Oslo - 80% beneficial',...
    'Oslo CCS', 'Oslo CCS - 90% beneficial', 'Oslo CCS - 80% beneficial'});
xlim([0 13]);
ylabel('B_{DH max}')
plot([0 13], [0 0], 'LineStyle', '--', 'Color', 'black')
box on

