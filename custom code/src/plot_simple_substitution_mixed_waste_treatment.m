
pos_wi_oc_ccs = 6;
use_european_avg_heat = 1;
use_european_avg_heat_50y = 0;

if use_european_avg_heat == 1
    emission_intensity_replaced_heat_gCO2eq_per_kWh = 151;
    emission_intensity_electricity_gCO2eq_per_kWh = MCS.emission_intensity_european_electricity_Scarlat_gCO2eq_per_kWh(1);
elseif use_european_avg_heat_50y == 1
    emission_intensity_replaced_heat_gCO2eq_per_kWh = 110;
    emission_intensity_electricity_gCO2eq_per_kWh = 52;
else
    emission_intensity_replaced_heat_gCO2eq_per_kWh  = MCS.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(1);
    emission_intensity_electricity_gCO2eq_per_kWh  = MCS.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(1);
end

plotMatrix = zeros(3,3);

landfill_emissions_2_air  = MCS_output(pos_lf).increased_landfilling_Europe_emissions_to_air_kgCO2eq./MCS_output(pos_lf).mass_ratio_displaced_waste_to_incinerated_waste;
landfill_stored_biogenic_carbon = MCS_output(pos_lf).increased_landfilling_Europe_biogenic_carbon_stored_kgCO2eq./MCS_output(pos_lf).mass_ratio_displaced_waste_to_incinerated_waste;

modern_landfill_emissions_2_air = MCS_output(pos_modern_lf).increased_landfilling_Europe_emissions_to_air_kgCO2eq./MCS_output(pos_modern_lf).mass_ratio_displaced_waste_to_incinerated_waste;
modern_landfill_avoided_ng = MCS_output(pos_modern_lf).avoided_natural_gas_fossil_electr_production_Europe_kgCO2eq./MCS_output(pos_modern_lf).mass_ratio_displaced_waste_to_incinerated_waste;

incineration_em2air = 10^3*MCS_output(pos_lf).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste*3.67; 
incineration_replaced_heat = (MCS_output(pos_wi_oc).avoided_energy_production_Norway_kgCO2eq./MCS_output(pos_wi_oc).mass_ratio_displaced_waste_to_incinerated_waste/(MCS.efficiency_district_heating_grid));

i_ccs_biogenic_captured_carbon_kgCO2_per_ton = 10^3*MCS_output(pos_lf).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste.*3.67.*(MCS.ccs_efficiency);

i_ccs_fossil_captured_carbon_kgCO2_per_ton = 10^3*MCS_output(pos_lf).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste.*3.67.*(MCS.ccs_efficiency);
i_ccs_carbon_captured_total_kgCO2_per_ton = i_ccs_biogenic_captured_carbon_kgCO2_per_ton + i_ccs_fossil_captured_carbon_kgCO2_per_ton;

heat_use_ccs_fossil_kWh = i_ccs_fossil_captured_carbon_kgCO2_per_ton.*MCS.ccs_heat_use_kWh_per_kg_CO2;
heat_use_ccs_biogenic_kWh = i_ccs_biogenic_captured_carbon_kgCO2_per_ton.*MCS.ccs_heat_use_kWh_per_kg_CO2;
heat_use_ccs_total_kWh = heat_use_ccs_fossil_kWh+heat_use_ccs_biogenic_kWh;
electricity_use_ccs_kWh = (i_ccs_fossil_captured_carbon_kgCO2_per_ton+i_ccs_biogenic_captured_carbon_kgCO2_per_ton).*MCS.ccs_electricity_use_kWh_per_kg_CO2;
electricity_use_fossil_ccs_kWh = i_ccs_fossil_captured_carbon_kgCO2_per_ton.*MCS.ccs_electricity_use_kWh_per_kg_CO2;

incineration_replaced_heat_ccs_kgCO2_per_ton = 10^-3*emission_intensity_replaced_heat_gCO2eq_per_kWh.*MCS_output(pos_wi_oc_ccs).heat_delivered_to_dh_network_kWh./MCS_output(pos_wi_oc_ccs).mass_ratio_displaced_waste_to_incinerated_waste/(MCS.efficiency_district_heating_grid);

%incineration_replaced_heat_ccs_kgCO2_per_ton = MCS_out(pos_wi_oc).incineration_overcapacity*10^-3*MCS_out(pos_wi_oc).heat_delivered_to_dh_network_kWh(pos_wi_oc)*MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(pos_wi_oc);

i_ccs_em2air_gwp100_kgCO2eq_per_ton = incineration_em2air.*(1-MCS.ccs_efficiency)+(incineration_em2air.*MCS.ccs_efficiency.*(MCS.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2+MCS.CCS_transport_emissions_kgCO2eq_per_kgCO2))...
    + i_ccs_biogenic_captured_carbon_kgCO2_per_ton.*MCS.CCS_transport_emissions_kgCO2eq_per_kgCO2 + (10^-3*emission_intensity_electricity_gCO2eq_per_kWh.*electricity_use_ccs_kWh);

i_ccs_em2air_fossil_contribution_gwp100_kgCO2eq_per_ton = incineration_em2air.*(1-MCS.ccs_efficiency)+(incineration_em2air.*MCS.ccs_efficiency.*(MCS.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2+MCS.CCS_transport_emissions_kgCO2eq_per_kgCO2)) ...
    + (10^-3*emission_intensity_electricity_gCO2eq_per_kWh.*electricity_use_fossil_ccs_kWh);

eur_i_ccs_em2air_fossil_contribution_gwp100_kgCO2eq_per_ton = incineration_em2air.*(1-MCS.ccs_efficiency)+(incineration_em2air.*MCS.ccs_efficiency.*(MCS.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2+MCS.CCS_transport_emissions_kgCO2eq_per_kgCO2)) ...
    + (10^-3*138.*electricity_use_fossil_ccs_kWh);

nor_i_ccs_em2air_fossil_contribution_gwp100_kgCO2eq_per_ton = incineration_em2air.*(1-MCS.ccs_efficiency)+(incineration_em2air.*MCS.ccs_efficiency.*(MCS.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2+MCS.CCS_transport_emissions_kgCO2eq_per_kgCO2)) ...
    + (10^-3*18.*electricity_use_fossil_ccs_kWh);

i_ccs_biogenic_cdr_kgCO2eq_per_ton = i_ccs_biogenic_captured_carbon_kgCO2_per_ton.*(1-MCS.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2);
%i_ccs_replaced_heat_kgCO2eq_per_ton  = incineration_replaced_heat-incineration_replaced_heat_ccs_kgCO2_per_ton;

net_incineration = incineration_em2air-incineration_replaced_heat;
net_incineration_ccs = i_ccs_em2air_gwp100_kgCO2eq_per_ton-i_ccs_biogenic_cdr_kgCO2eq_per_ton-i_ccs_replaced_heat_kgCO2eq_per_ton;
net_lf_modern = modern_landfill_emissions_2_air-landfill_stored_biogenic_carbon-modern_landfill_avoided_ng;
net_lf= landfill_emissions_2_air-landfill_stored_biogenic_carbon;

% Incineration
plotMatrix(1,1) = mean(incineration_em2air);
plotMatrix(1,2) = 0;
plotMatrix(1,3) = mean(-incineration_replaced_heat);

% Incineration w/CCS
plotMatrix(2,1) = mean(i_ccs_em2air_gwp100_kgCO2eq_per_ton);
plotMatrix(2,2) = mean(-i_ccs_biogenic_cdr_kgCO2eq_per_ton);
plotMatrix(2,3) = mean(-incineration_replaced_heat_ccs_kgCO2_per_ton);

% Landfill, with biogas production
plotMatrix(3,1) = mean(modern_landfill_emissions_2_air);
plotMatrix(3,2) = mean(-landfill_stored_biogenic_carbon);
plotMatrix(3,3) = mean(-modern_landfill_avoided_ng);

% Landfill, without biogas
plotMatrix(4,1) = mean(landfill_emissions_2_air);
plotMatrix(4,2) = mean(-landfill_stored_biogenic_carbon);
plotMatrix(4,3) = 0;

nets(1) = sum(plotMatrix(1,:));
nets(2) = sum(plotMatrix(2,:));
nets(3) = sum(plotMatrix(3,:));
nets(4) = sum(plotMatrix(4,:));

nets_std(1) = std(net_incineration);
nets_std(2) = std(net_incineration_ccs);
nets_std(3) = std(net_lf_modern);
nets_std(4) = std(net_lf);

net_attributional(1) =  plotMatrix(1,1) + plotMatrix(1,2);
net_attributional(2) =  plotMatrix(2,1) + plotMatrix(2,2);
net_attributional(3) =  plotMatrix(3,1) + plotMatrix(3,2);
net_attributional(4) =  plotMatrix(4,1) + plotMatrix(4,2);

labels = {'Energy recovery', 'Energy recovery w/CCS', 'Modern landfill - biogass', 'Landfill'};

x_vec = [1 2 3 4];

figure
stack = bar(plotMatrix, 'stacked');
hold on


stack(3).LineStyle = '--';
stack(1).FaceColor = [.7 .7 .7];
        stack(3).FaceColor = [.7 .7 .7];
stack(2).FaceColor = [0.4660 0.6740 0.1880];

%scatter(x_vec, net_attributional,'*');
scatter(x_vec, nets, "black");
errorbar(x_vec, nets, 2*nets_std,"Color", 'black', 'LineWidth', 1, 'LineStyle','none');

legend({'Fossil emissions', 'Biogenic carbon', 'Energy substitution', 'Net'})
%legend({'Utslipp', 'Biogent CDR', 'Ungåtte utslipp', 'Netto attribusjonell', 'Netto konsekvensielt'})
xticklabels(labels)
xtickangle(45)
ylabel('kg CO_{2}ekv tonn avfall^{-1}')
ylim([-1000 6000])


%% Kunnskapsaksen, +46 kton avfall


