function MCS_out = do_MCS(MCS_in)

n_simulations = length(MCS_in.virgin_polyethylene_production_kgco2eq_per_ton);

n_scenarios = 18;
n_scen_descriptors_binaries = 10;

MCS_out(1:n_scenarios) = MCS_output;
c=1;

% ESTABLISH SCENARIOS
%% Mechanical recycling, fossil plastic
MCS_out(c).label = 'FOS-PE, REC';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_recycling = 1;

c=c+1;

%% Incineration with overcapacity, fossil plastic
MCS_out(c).label = 'FOS-PE, WI, O';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).incineration_overcapacity = 1;
c=c+1;

%% Incineration replacing msw to european incineration, fossil plastic
MCS_out(c).label = 'FOS-PE, WI, EU-WI';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_incineration = 1;
c=c+1;

%% Incineration replacing msw to european landfill, fossil plastic
MCS_out(c).label = 'FOS-PE, WI, EU-MOD-LF';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
c=c+1;

%% INCINERATION replacing msw to european landfill without methane collection, fossil plastic
MCS_out(c).label = 'FOS-PE, WI, EU-LF';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).waste_replaced_to_European_landfill_without_methane_collection = 1;
c=c+1;


%% Incineration with CCS, overcapacity, fossil plastic
MCS_out(c).label = 'FOS-PE, WI-CCS, O';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).incineration_overcapacity = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european incineration, fossil plastic
MCS_out(c).label = 'FOS-PE, WI-CCS, EU-WI';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_incineration = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european landfill, fossil plastic
MCS_out(c).label = 'FOS-PE, WI-CCS, EU-MOD-LF';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european landfill without methane collection, fossil plastic
MCS_out(c).label = 'FOS-PE, WI-CCS, EU-LF';
MCS_out(c).is_fossil_ethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).waste_replaced_to_European_landfill_without_methane_collection = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Mechanical recycling, bioplastic
MCS_out(c).label = 'BIO-PE, REC';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_recycling = 1;

c=c+1;

%% Incineration with overcapacity, bioplastic
MCS_out(c).label = 'BIO-PE, WI, O';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).incineration_overcapacity = 1;
c=c+1;

%% Incineration replacing msw to european incineration, bioplastic
MCS_out(c).label = 'BIO-PE, WI, EU-WI';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_incineration = 1;
c=c+1;

%% Incineration replacing msw to european landfill, bioplastic
MCS_out(c).label = 'BIO-PE, WI, EU-MOD-LF';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
c=c+1;

%% Incineration replacing msw to european landfill without methane collection, bioplastic
MCS_out(c).label = 'BIO-PE, WI, EU-LF';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).waste_replaced_to_European_landfill_without_methane_collection = 1;
c=c+1;


%% Incineration with CCS, overcapacity, bioplastic
MCS_out(c).label = 'BIO-PE, WI-CCS, O';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).incineration_overcapacity = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european incineration, bioplastic
MCS_out(c).label = 'BIO-PE, WI-CCS, EU-WI';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_incineration = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european landfill, bioplastic
MCS_out(c).label = 'BIO-PE, WI-CCS, EU-MOD-LF';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% Incineration with CCS, replacing msw to european landfill without methane collection, bioplastic
MCS_out(c).label = 'BIO-PE, WI-CCS, EU-LF';
MCS_out(c).is_biopolyethylene = 1;
MCS_out(c).is_incineration = 1;
MCS_out(c).waste_replaced_to_European_landfill = 1;
MCS_out(c).waste_replaced_to_European_landfill_without_methane_collection = 1;
MCS_out(c).incineration_coupled_to_ccs = 1;
c=c+1;

%% PREALLOCATION
for scens = 1:c-1
    fields = fieldnames(MCS_out(scens));
    for i = n_scen_descriptors_binaries+1:length(fields)
        MCS_out(scens).(fields{i}) = zeros(1,n_simulations);
    end
end

%% CALCULATIONS

for i = 1:c-1
    i
    for j = 1:n_simulations
        %j
        % For every case
        MCS_out(i).local_transportation_during_waste_collection_kgCO2eq(j) = 10^-3*MCS_in.local_waste_transport_distance(j)*MCS_in.road_transport_energy_use_MJ_per_ton_km(j)*MCS_in.emission_intensity_diesel_gCO2eq_per_MJ(j);

        % For recycling cases
        MCS_out(i).recycling_emissions_incl_pretreatment_kgCO2eq(j) = MCS_out(i).is_recycling*MCS_in.mechanical_recycling_polyethylene_kg_co2eq_per_ton(j);
        MCS_out(i).avoided_polyethylene_production_kgCO2eq(j) = MCS_out(i).is_recycling*MCS_in.virgin_polyethylene_production_kgco2eq_per_ton(j)*MCS_in.replacement_rate_recycled_polyethylene(j);

        %% Waste incineration
        MCS_out(i).energy_produced_heat_kWh(j) = MCS_out(i).is_incineration*MCS_in.lower_heating_value_polyethylene(j)*MCS_in.thermal_energy_efficiency_waste_incineration(j)*MCS_in.conversion_factor_kWH_per_GJ(j);

        % Calculate lhv of displaced waste
        residual_share = 1-(MCS_in.msw_share_plastic_mass(j)+MCS_in.msw_share_inert_mass(j) + MCS_in.msw_share_paper_mass(j) + MCS_in.msw_share_biowaste_mass(j) + MCS_in.msw_share_wood_mass(j));

        MCS_out(i).lhv_displaced_waste_GJ_per_ton(j) = MCS_in.msw_share_plastic_mass(j)*MCS_in.lower_heating_value_mixed_plastics(j) + ...
            MCS_in.msw_share_paper_mass(j) * MCS_in.lower_heating_value_paper(j) ...
            + MCS_in.msw_share_biowaste_mass(j) * MCS_in.lower_heating_value_biogenic_waste(j)...
            + MCS_in.msw_share_wood_mass(j) * MCS_in.lower_heating_value_wood(j)...
            + residual_share * MCS_in.lower_heating_value_msw(j);


        % Calculate carbon fraction of displaced waste
        MCS_out(i).carbon_fraction_displaced_waste_kgC_per_kgWaste(j) = MCS_in.msw_share_plastic_mass(j)*MCS_in.carbon_content_mixed_plastics(j)...
            + MCS_in.msw_share_paper_mass(j) * MCS_in.carbon_content_paper(j)...
            + MCS_in.msw_share_biowaste_mass(j)*MCS_in.carbon_content_biogenic_waste(j)...
            +MCS_in.msw_share_wood_mass(j)*MCS_in.carbon_content_wood(j)...
            + residual_share * MCS_in.carbon_content_msw(j);

        % Calculate biogenic carbon fraction of displaced waste
        MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j) = MCS_in.msw_share_plastic_mass(j)*MCS_in.carbon_content_mixed_plastics(j)*MCS_in.plastic_biogenic_fraction_carbon(j)...
            + MCS_in.msw_share_paper_mass(j) * MCS_in.carbon_content_paper(j)*MCS_in.biogenic_fraction_paper(j)...
            + MCS_in.msw_share_biowaste_mass(j)*MCS_in.carbon_content_biogenic_waste(j)*1 ...
            + MCS_in.msw_share_wood_mass(j)*MCS_in.carbon_content_wood(j)*MCS_in.biogenic_fraction_wood(j) ...
            + residual_share * MCS_in.carbon_content_msw(j)*MCS_in.biogenic_fraction_msw(j);

        % Calculate fossil carbon fraction of displaced waste
        MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j) = MCS_out(i).carbon_fraction_displaced_waste_kgC_per_kgWaste(j)-MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j);

        % Calculate biogenic share of all carbon
        MCS_out(i).biogenic_share_of_all_displaced_carbon_kgC_per_kgC(j) = MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)/MCS_out(i).carbon_fraction_displaced_waste_kgC_per_kgWaste(j);

        % Calculate emissions to air from local incineration
        MCS_out(i).incineration_Norway_CO2_emitted_to_air_fossil_kgCO2(j) = 10^3*MCS_out(i).is_incineration*MCS_in.carbon_content_polyethylene(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*MCS_out(i).is_fossil_ethylene*(1-(MCS_out(i).incineration_coupled_to_ccs*MCS_in.ccs_efficiency(j)));
        MCS_out(i).incineration_Norway_CO2_emitted_to_air_biogenic_kgCO2(j) = 10^3*MCS_out(i).is_incineration*MCS_in.carbon_content_polyethylene(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*MCS_out(i).is_biopolyethylene*(1-(MCS_out(i).incineration_coupled_to_ccs*MCS_in.ccs_efficiency(j)));

        % Calculate captured CO2 (fossil or biogenic)
        MCS_out(i).incineration_Norway_CO2_fossil_captured_kgCO2(j) = 10^3*MCS_out(i).is_incineration*MCS_in.carbon_content_polyethylene(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*MCS_out(i).is_fossil_ethylene*MCS_out(i).incineration_coupled_to_ccs*MCS_in.ccs_efficiency(j);
        MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j) = 10^3*MCS_out(i).is_incineration*MCS_in.carbon_content_polyethylene(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*MCS_out(i).is_biopolyethylene*MCS_out(i).incineration_coupled_to_ccs*MCS_in.ccs_efficiency(j);

        % Calculate mass ratio between displaced waste and locally
        % incinerated waste (newly generated waste)
        MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j) = MCS_in.lower_heating_value_polyethylene(j)/MCS_out(i).lhv_displaced_waste_GJ_per_ton(j);

        % Calculate emissions to air from displaced waste to European
        % incineration
        MCS_out(i).incineration_Europe_CO2_emitted_to_air_fossil_kgCO2(j) = 10^3*MCS_out(i).waste_replaced_to_European_incineration*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j);
        MCS_out(i).incineration_Europe_CO2_emitted_to_air_biogenic_kgCO2(j) = 10^3*MCS_out(i).waste_replaced_to_European_incineration*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j);


        % Displaced waste, CCS abroad. CHANGE IF THIS SCENARIO IS
        % IMPLEMENTED.
        MCS_out(i).incineration_Europe_CO2_removal_biogenic_kgCO2(j) = 0;

        % Avoided incineration emissions and lost cdr in Norway


        MCS_out(i).avoided_incineration_Norway_kgCO2eq(j) = 10^3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*(1-(MCS_in.ccs_efficiency(j)*MCS_out(i).incineration_coupled_to_ccs))*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));
        MCS_out(i).lost_biogenic_carbon_dioxide_removal_kgCO2eq(j) = 10^3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*MCS_in.ccs_efficiency(j)*MCS_out(i).incineration_coupled_to_ccs*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));

        % Displaced waste, landfill abroad.
        %biogenic_methane_generation_potential_this = MCS_in.methane_correction_factor(j)*MCS_in.share_of_biogenic_carbon_degradable(j)*MCS_in.fraction_degradable_organic_carbon_dissimilated(j)

        if MCS_out(i).waste_replaced_to_European_landfill_without_methane_collection == 1
            methane_collection_rate = 0;
        else
            methane_collection_rate = MCS_in.methane_collection_rate(j);
        end

        landfilled_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j);
        landfilled_fossil_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j);

        landfilled_biowaste_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.msw_share_biowaste_mass(j) * MCS_in.carbon_content_biogenic_waste(j);
        landfilled_paper_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.msw_share_paper_mass(j) * MCS_in.carbon_content_paper(j)*MCS_in.biogenic_fraction_paper(j);
        landfilled_wood_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.msw_share_wood_mass(j) * MCS_in.carbon_content_wood(j)*MCS_in.biogenic_fraction_wood(j);
        landfilled_plastic_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.msw_share_plastic_mass(j) * MCS_in.carbon_content_mixed_plastics(j)*MCS_in.plastic_biogenic_fraction_carbon(j);
        landfilled_residual_waste_biogenic_carbon_this_kgC = 10^3*MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*residual_share * MCS_in.carbon_content_msw(j)*MCS_in.biogenic_fraction_msw(j);

        landfilled_biogenic_carbon_stored_long_term_biowaste_this_kgC = landfilled_biowaste_biogenic_carbon_this_kgC - (landfilled_biowaste_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*(MCS_in.docf_biogenic_waste(j))); % Docf for food waste = 0.7 (docf_biogenic_waste)
        landfilled_biogenic_carbon_stored_long_term_paper_this_kgC = landfilled_paper_biogenic_carbon_this_kgC - (landfilled_paper_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*(MCS_in.docf_paper(j)));
        landfilled_biogenic_carbon_stored_long_term_wood_this_kgC = landfilled_wood_biogenic_carbon_this_kgC - (landfilled_wood_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*(MCS_in.docf_wood(j)));
        landfilled_biogenic_carbon_stored_long_term_plastic_this_kgC = landfilled_plastic_biogenic_carbon_this_kgC - (landfilled_plastic_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*(MCS_in.docf_bioplastic(j)));
        landfilled_biogenic_carbon_stored_long_term_residual_waste_kgC = landfilled_residual_waste_biogenic_carbon_this_kgC - (landfilled_residual_waste_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*(MCS_in.fraction_degradable_organic_carbon_dissimilated(j)));

        landfilled_biowaste_biogenic_C_emitted_to_air_kgC = landfilled_biowaste_biogenic_carbon_this_kgC-landfilled_biogenic_carbon_stored_long_term_biowaste_this_kgC;
        landfilled_paper_biogenic_C_emitted_to_air_kgC = landfilled_paper_biogenic_carbon_this_kgC-landfilled_biogenic_carbon_stored_long_term_paper_this_kgC;
        landfilled_wood_biogenic_C_emitted_to_air_kgC = landfilled_wood_biogenic_carbon_this_kgC-landfilled_biogenic_carbon_stored_long_term_wood_this_kgC;
        landfilled_plastic_biogenic_C_emitted_to_air_kgC = landfilled_plastic_biogenic_carbon_this_kgC-landfilled_biogenic_carbon_stored_long_term_plastic_this_kgC;
        landfilled_residual_waste_biogenic_C_emitted_to_air_kgC = landfilled_residual_waste_biogenic_carbon_this_kgC-landfilled_biogenic_carbon_stored_long_term_residual_waste_kgC;

        landfilled_biowaste_biogenic_CH4_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_biowaste_biogenic_C_emitted_to_air_kgC*MCS_in.fraction_of_ch4_in_landfill_gas(j);
        landfilled_paper_biogenic_CH4_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_paper_biogenic_C_emitted_to_air_kgC*MCS_in.fraction_of_ch4_in_landfill_gas(j);
        landfilled_wood_biogenic_CH4_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_wood_biogenic_C_emitted_to_air_kgC*MCS_in.fraction_of_ch4_in_landfill_gas(j);
        landfilled_plastic_biogenic_CH4_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_plastic_biogenic_C_emitted_to_air_kgC*MCS_in.fraction_of_ch4_in_landfill_gas(j);
        landfilled_residual_waste_biogenic_CH4_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_residual_waste_biogenic_C_emitted_to_air_kgC*MCS_in.fraction_of_ch4_in_landfill_gas(j);

        landfilled_biowaste_biogenic_CH4_em2air_kgCH4 = landfilled_biowaste_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));
        landfilled_paper_biogenic_CH4_em2air_kgCH4 = landfilled_paper_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));
        landfilled_wood_biogenic_CH4_em2air_kgCH4 = landfilled_wood_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));
        landfilled_plastic_biogenic_CH4_em2air_kgCH4 = landfilled_plastic_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));
        landfilled_residual_waste_biogenic_CH4_em2air_kgCH4 = landfilled_residual_waste_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));

        oxidized_biogenic_CH4_to_CO2_biowaste_kgCO2 = landfilled_biowaste_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));
        oxidized_biogenic_CH4_to_CO2_paper_kgCO2 = landfilled_paper_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));
        oxidized_biogenic_CH4_to_CO2_wood_kgCO2 = landfilled_wood_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));
        oxidized_biogenic_CH4_to_CO2_plastic_kgCO2 = landfilled_plastic_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));
        oxidized_biogenic_CH4_to_CO2_residual_waste_kgCO2 = landfilled_residual_waste_biogenic_CH4_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));

        landfilled_biowaste_biogenic_CO2_em2air_kgCO2 = ((MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_biowaste_biogenic_C_emitted_to_air_kgC*(1-MCS_in.fraction_of_ch4_in_landfill_gas(j)))+oxidized_biogenic_CH4_to_CO2_biowaste_kgCO2;
        landfilled_paper_biogenic_CO2_em2air_kgCO2 = ((MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_paper_biogenic_C_emitted_to_air_kgC*(1-MCS_in.fraction_of_ch4_in_landfill_gas(j)))+oxidized_biogenic_CH4_to_CO2_paper_kgCO2;
        landfilled_wood_biogenic_CO2_em2air_kgCO2 = ((MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_wood_biogenic_C_emitted_to_air_kgC*(1-MCS_in.fraction_of_ch4_in_landfill_gas(j)))+oxidized_biogenic_CH4_to_CO2_wood_kgCO2;
        landfilled_plastic_biogenic_CO2_em2air_kgCO2 = ((MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_plastic_biogenic_C_emitted_to_air_kgC*(1-MCS_in.fraction_of_ch4_in_landfill_gas(j)))+oxidized_biogenic_CH4_to_CO2_plastic_kgCO2;
        landfilled_residual_waste_biogenic_CO2_em2air_kgCO2 = ((MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_residual_waste_biogenic_C_emitted_to_air_kgC*(1-MCS_in.fraction_of_ch4_in_landfill_gas(j)))+oxidized_biogenic_CH4_to_CO2_residual_waste_kgCO2;

        use_waste_type_specific_docf = 1;

        if use_waste_type_specific_docf == 0
            % Long term storage
            landfilled_biogenic_carbon_stored_long_term_this_kgC = landfilled_biogenic_carbon_this_kgC*((1-MCS_in.share_of_biogenic_carbon_degradable(j))+(MCS_in.share_of_biogenic_carbon_degradable(j)*(1-MCS_in.fraction_degradable_organic_carbon_dissimilated(j))));
            landfilled_fossil_carbon_stored_long_term_this_kgC = landfilled_fossil_carbon_this_kgC*((1-MCS_in.share_of_fossil_carbon_degradable(j))+(MCS_in.share_of_fossil_carbon_degradable(j)*(1-MCS_in.fraction_degradable_organic_carbon_dissimilated(j))));

            landfill_gas_biogenic_this_kgCO2 = (MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*MCS_in.fraction_degradable_organic_carbon_dissimilated(j)*((1-MCS_in.fraction_of_ch4_in_landfill_gas(j)));
            landfill_gas_biogenic_this_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_biogenic_carbon_this_kgC*MCS_in.share_of_biogenic_carbon_degradable(j)*MCS_in.fraction_degradable_organic_carbon_dissimilated(j)*(MCS_in.fraction_of_ch4_in_landfill_gas(j));

            landfill_gas_biogenic_this_em2air_kgCH4 = landfill_gas_biogenic_this_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));

        elseif use_waste_type_specific_docf == 1
            landfilled_biogenic_carbon_stored_long_term_this_kgC = landfilled_biogenic_carbon_stored_long_term_biowaste_this_kgC + landfilled_biogenic_carbon_stored_long_term_paper_this_kgC + landfilled_biogenic_carbon_stored_long_term_wood_this_kgC + landfilled_biogenic_carbon_stored_long_term_plastic_this_kgC+landfilled_biogenic_carbon_stored_long_term_residual_waste_kgC;
            landfilled_fossil_carbon_stored_long_term_this_kgC = landfilled_fossil_carbon_this_kgC*((1-MCS_in.share_of_fossil_carbon_degradable(j))+(MCS_in.share_of_fossil_carbon_degradable(j)*(1-MCS_in.fraction_degradable_organic_carbon_dissimilated(j))));
            
            landfill_gas_biogenic_this_kgCO2 = landfilled_biowaste_biogenic_CO2_em2air_kgCO2 + landfilled_paper_biogenic_CO2_em2air_kgCO2 + landfilled_wood_biogenic_CO2_em2air_kgCO2 + landfilled_plastic_biogenic_CO2_em2air_kgCO2 + landfilled_residual_waste_biogenic_CO2_em2air_kgCO2;
            landfill_gas_biogenic_this_kgCH4 = landfilled_biowaste_biogenic_CH4_kgCH4 + landfilled_paper_biogenic_CH4_kgCH4 + landfilled_wood_biogenic_CH4_kgCH4 + landfilled_plastic_biogenic_CH4_kgCH4+landfilled_residual_waste_biogenic_CH4_kgCH4;
            landfill_gas_biogenic_this_em2air_kgCH4 = landfilled_biowaste_biogenic_CH4_em2air_kgCH4 + landfilled_paper_biogenic_CH4_em2air_kgCH4 + landfilled_wood_biogenic_CH4_em2air_kgCH4 + landfilled_plastic_biogenic_CH4_em2air_kgCH4+landfilled_residual_waste_biogenic_CH4_em2air_kgCH4;
            
        end

        landfill_gas_fossil_this_kgCO2 = (MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j))*landfilled_fossil_carbon_this_kgC*MCS_in.share_of_fossil_carbon_degradable(j)*MCS_in.fraction_degradable_organic_carbon_dissimilated(j)*((1-MCS_in.fraction_of_ch4_in_landfill_gas(j)));
        landfill_gas_fossil_this_kgCH4 = (MCS_in.molar_mass_CH4(j)/MCS_in.molar_mass_C(j))*landfilled_fossil_carbon_this_kgC*MCS_in.share_of_fossil_carbon_degradable(j)*MCS_in.fraction_degradable_organic_carbon_dissimilated(j)*(MCS_in.fraction_of_ch4_in_landfill_gas(j));

        



        %MCS_out(i).landfill_Europe_CH4_emitted_to_air_biogenic_kgCH4(j) = landfill_gas_biogenic_this_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));
        
        MCS_out(i).landfill_Europe_CH4_emitted_to_air_biogenic_kgCH4(j) = landfill_gas_biogenic_this_em2air_kgCH4;

        oxidized_biogenic_CH4_to_CO2_kgCO2 = oxidized_biogenic_CH4_to_CO2_biowaste_kgCO2 + oxidized_biogenic_CH4_to_CO2_paper_kgCO2 + oxidized_biogenic_CH4_to_CO2_wood_kgCO2 + oxidized_biogenic_CH4_to_CO2_plastic_kgCO2 + oxidized_biogenic_CH4_to_CO2_residual_waste_kgCO2;

        MCS_out(i).landfill_Europe_CO2_emitted_to_air_biogenic_kgCO2(j) = landfill_gas_biogenic_this_kgCO2 + oxidized_biogenic_CH4_to_CO2_kgCO2;

        MCS_out(i).landfill_Europe_CH4_emitted_to_air_fossil_kgCH4(j) = landfill_gas_fossil_this_kgCH4*(1-methane_collection_rate)*(1-MCS_in.landfill_methane_oxidation_factor(j));

        oxidized_fossil_CH4_to_CO2_kgCO2 = landfill_gas_fossil_this_kgCH4*(1-methane_collection_rate)*(MCS_in.landfill_methane_oxidation_factor(j))*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));

        MCS_out(i).landfill_Europe_CO2_emitted_to_air_fossil_kgCO2(j) = landfill_gas_fossil_this_kgCO2 + oxidized_fossil_CH4_to_CO2_kgCO2;

        MCS_out(i).landfill_Europe_C_stored_long_term_fossil_kgC(j) = landfilled_fossil_carbon_stored_long_term_this_kgC;
        MCS_out(i).landfill_Europe_C_stored_long_term_biogenic_kgC(j) = landfilled_biogenic_carbon_stored_long_term_this_kgC;

        MCS_out(i).landfill_gas_CH4_Europe_collected_kgCH4(j) = (landfill_gas_biogenic_this_kgCH4+landfill_gas_fossil_this_kgCH4)*methane_collection_rate;

        share_fossil_carbon_in_landfill_CH4_gas  = landfill_gas_fossil_this_kgCH4/(landfill_gas_biogenic_this_kgCH4+landfill_gas_fossil_this_kgCH4);
        if isnan(share_fossil_carbon_in_landfill_CH4_gas)
            share_fossil_carbon_in_landfill_CH4_gas = 0;
        end

        if i==5 && j==1
            fprintf('This');
        end

        % Emissions from increased incineration in Europe
        MCS_out(i).increased_incineration_Europe_kgCO2eq(j) = 10^3*(MCS_out(i).waste_replaced_to_European_incineration)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));

        % Increased natural gas production from landfill
        MCS_out(i).primary_energy_produced_in_Europe_natural_gas_kWh(j) = 10^-3*MCS_out(i).landfill_gas_CH4_Europe_collected_kgCH4(j)*MCS_in.lower_heating_value_methane(j)*MCS_in.conversion_factor_kWH_per_GJ(j);
        % Avoided waste transportation
        if MCS_in.binary_avoided_international_waste_transport_is_ship
            MCS_out(i).avoided_waste_transportation_Europe_to_Norway_kgCO2eq(j) = 10^-3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.emissions_intensity_ship_freight_container_ship_gCO2eq_p_ton_km(j)*MCS_in.international_waste_transport_distance(j);
        else
            MCS_out(i).avoided_waste_transportation_Europe_to_Norway_kgCO2eq(j) = 10^-3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_in.road_transport_energy_use_MJ_per_ton_km(j)*MCS_in.international_waste_transport_distance(j)*MCS_in.emission_intensity_diesel_gCO2eq_per_MJ(j);
        end
        % Increased electricity production in Europe
        MCS_out(i).electricity_production_Europe_kWh(j) = (MCS_out(i).primary_energy_produced_in_Europe_natural_gas_kWh(j)*MCS_in.efficiency_natural_gas_electricity_production(j))+...
            (MCS_out(i).waste_replaced_to_European_incineration*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).lhv_displaced_waste_GJ_per_ton(j)*MCS_in.efficiency_thermal_power_plant_electricity_waste_incineration(j)*MCS_in.conversion_factor_kWH_per_GJ(j));

        binary_methane_collected = 0;
        if MCS_out(i).waste_replaced_to_European_landfill_without_methane_collection == 0
            if MCS_out(i).waste_replaced_to_European_landfill == 1
                binary_methane_collected = 1;
            end
        end

        %electricity_produced_in_Europe_from_landfill_methane_kWh = binary_methane_collected*(MCS_out(i).waste_replaced_to_European_landfill*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).lhv_displaced_waste_GJ_per_ton(j)*MCS_in.efficiency_thermal_power_plant_electricity_waste_incineration(j)*MCS_in.conversion_factor_kWH_per_GJ(j));

        electricity_produced_in_Europe_from_landfill_methane_kWh = binary_methane_collected*MCS_out(i).landfill_gas_CH4_Europe_collected_kgCH4(j)*MCS_in.lower_heating_value_methane(j)*MCS_in.efficiency_natural_gas_electricity_production(j)*10^-3*MCS_in.conversion_factor_kWH_per_GJ(j);

        electricity_produced_in_Europe_from_waste_incineration_kWh =  (MCS_out(i).waste_replaced_to_European_incineration*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).lhv_displaced_waste_GJ_per_ton(j)*MCS_in.efficiency_thermal_power_plant_electricity_waste_incineration(j)*MCS_in.conversion_factor_kWH_per_GJ(j));

        MCS_out(i).electricity_production_from_waste_incineration_Europe_kWh(j) = electricity_produced_in_Europe_from_waste_incineration_kWh;
        MCS_out(i).electricity_production_from_natural_gas_Europe_kWh(j) = electricity_produced_in_Europe_from_landfill_methane_kWh;

        % Avoided electricity production in Europe
        MCS_out(i).avoided_natural_gas_fossil_electr_production_Europe_kgCO2eq(j) = 10^-3*electricity_produced_in_Europe_from_landfill_methane_kWh*MCS_in.emission_intensity_natural_gas_gCO2eq_per_kWh(j);
        % Electricity use, CCS
        MCS_out(i).electricity_use_CCS_biogenic_CO2_kWh(j) = MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j)*MCS_in.ccs_electricity_use_kWh_per_kg_CO2(j);
        MCS_out(i).electricity_use_CCS_fossil_CO2_kWh(j) = MCS_out(i).incineration_Norway_CO2_fossil_captured_kgCO2(j)*MCS_in.ccs_electricity_use_kWh_per_kg_CO2(j);

        % Supply chain emissions, CCS
        if MCS_in.binary_avoided_heat_is_average_european_heat
            MCS_out(i).electricity_use_CCS_biogenic_CO2_kgCO2eq(j) = 10^-3*MCS_out(i).electricity_use_CCS_biogenic_CO2_kWh(j)*MCS_in.emission_intensity_european_electricity_gCO2eq_per_kWh(j);
            MCS_out(i).electricity_use_CCS_fossil_CO2_kgCO2eq(j) = 10^-3*MCS_out(i).electricity_use_CCS_fossil_CO2_kWh(j) *MCS_in.emission_intensity_european_electricity_gCO2eq_per_kWh(j);
        else
        MCS_out(i).electricity_use_CCS_biogenic_CO2_kgCO2eq(j) = 10^-3*MCS_out(i).electricity_use_CCS_biogenic_CO2_kWh(j)*MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j);
        MCS_out(i).electricity_use_CCS_fossil_CO2_kgCO2eq(j) = 10^-3*MCS_out(i).electricity_use_CCS_fossil_CO2_kWh(j) *MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j);
        

        end

        if MCS_out(i).incineration_coupled_to_ccs == 1
            MCS_out(i).heat_used_for_CCS_fossil_kWh(j) = MCS_out(i).incineration_Norway_CO2_fossil_captured_kgCO2(j)*MCS_in.ccs_heat_use_kWh_per_kg_CO2(j); %%%%
            MCS_out(i).heat_used_for_CCS_biogenic_kWh(j) = MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j)*MCS_in.ccs_heat_use_kWh_per_kg_CO2(j);
        else
            MCS_out(i).heat_used_for_CCS_fossil_kWh(j) = 0;
            MCS_out(i).heat_used_for_CCS_biogenic_kWh(j) =0;
        end
        
        MCS_out(i).heat_delivered_to_dh_network_kWh(j) = MCS_out(i).energy_produced_heat_kWh(j)-MCS_out(i).heat_used_for_CCS_fossil_kWh(j)-MCS_out(i).heat_used_for_CCS_biogenic_kWh(j);

        MCS_out(i).leakage_CCS_supply_chain_biogenic_CO2_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j)*MCS_in.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2(j);
        MCS_out(i).leakage_CCS_supply_chain_fossil_CO2_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_fossil_captured_kgCO2(j)*MCS_in.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2(j);
        MCS_out(i).transport_of_fossil_CO2_to_reservoir_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_fossil_captured_kgCO2(j)*MCS_in.CCS_transport_emissions_kgCO2eq_per_kgCO2(j);
        MCS_out(i).transport_of_biogenic_CO2_to_reservoir_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j)*MCS_in.CCS_transport_emissions_kgCO2eq_per_kgCO2(j);

        % Avoided CCS
        displaced_fossil_CO2_potentially_captured_msw_kgCO2 = 10^3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).fossil_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*MCS_in.ccs_efficiency(j)*MCS_out(i).incineration_coupled_to_ccs*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));
        displaced_biogenic_CO2_potentially_captured_msw_kgCO2 = 10^3*(MCS_out(i).waste_replaced_to_European_incineration+MCS_out(i).waste_replaced_to_European_landfill)*MCS_out(i).mass_ratio_displaced_waste_to_incinerated_waste(j)*MCS_out(i).biogenic_carbon_fraction_displaced_waste_kgC_per_kgWaste(j)*MCS_in.ccs_efficiency(j)*MCS_out(i).incineration_coupled_to_ccs*MCS_in.transfer_coefficient_waste_incineration_C_to_air(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));


        MCS_out(i).avoided_electricity_use_CCS_fossil_CO2_kgCO2eq(j) = 10^-3*displaced_fossil_CO2_potentially_captured_msw_kgCO2*MCS_in.ccs_electricity_use_kWh_per_kg_CO2(j)*MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j);
        MCS_out(i).avoided_electricity_use_CCS_biogenic_CO2_kgCO2eq(j) = 10^-3*displaced_biogenic_CO2_potentially_captured_msw_kgCO2*MCS_in.ccs_electricity_use_kWh_per_kg_CO2(j)*MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j);
        MCS_out(i).avoided_leakage_CCS_supply_chain_biogenic_CO2_kgCO2eq(j) = displaced_biogenic_CO2_potentially_captured_msw_kgCO2*MCS_in.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2(j);
        MCS_out(i).avoided_leakage_CCS_supply_chain_fossil_CO2_kgCO2eq(j) = displaced_fossil_CO2_potentially_captured_msw_kgCO2*MCS_in.CCS_supply_chain_co2_leakage_rate_kgCO2_per_kgCO2(j);
        MCS_out(i).avoided_transport_of_fossil_CO2_to_reservoir_kgCO2eq(j) = displaced_fossil_CO2_potentially_captured_msw_kgCO2*MCS_in.CCS_transport_emissions_kgCO2eq_per_kgCO2(j);
        MCS_out(i).avoided_transport_of_biogenic_CO2_to_reservoir_kgCO2eq(j) = displaced_biogenic_CO2_potentially_captured_msw_kgCO2*MCS_in.CCS_transport_emissions_kgCO2eq_per_kgCO2(j);

        % Lost CDR
        MCS_out(i).lost_biogenic_carbon_dioxide_removal_kgCO2eq(j) = displaced_biogenic_CO2_potentially_captured_msw_kgCO2;

        MCS_out(i).incineration_Norway_fossil_emissions_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_emitted_to_air_fossil_kgCO2(j);
        % Avoided energy production, Norway
        if MCS_in.binary_avoided_Norwegian_heat_is_electricity_boiler == 1
            MCS_out(i).avoided_energy_production_Norway_kgCO2eq(j) =  MCS_out(i).incineration_overcapacity*10^-3*MCS_out(i).heat_delivered_to_dh_network_kWh(j)*MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j);
        elseif MCS_in.binary_avoided_heat_is_average_european_heat == 1
            MCS_out(i).avoided_energy_production_Norway_kgCO2eq(j) = MCS_out(i).incineration_overcapacity*10^-3*MCS_out(i).heat_delivered_to_dh_network_kWh(j)*MCS_in.emission_intensity_average_european_heat_gCO2e_per_kWh(j);
        else
            MCS_out(i).avoided_energy_production_Norway_kgCO2eq(j) = MCS_out(i).incineration_overcapacity*10^-3*MCS_out(i).heat_delivered_to_dh_network_kWh(j)*(MCS_in.lca_emissions_non_energy_heat_pump_gCO2eq_per_kWh(j)+...
                (MCS_in.emission_intensity_norwegian_electricity_gCO2eq_per_kWh(j)/MCS_in.heat_pump_efficiency(j))); % HEAT PUMP running on Norwegian grid electricity
        end
        % Avoided energy production, Europe
        MCS_out(i).avoided_average_electricity_production_Europe_kgCO2eq(j) = 10^-3*electricity_produced_in_Europe_from_waste_incineration_kWh*MCS_in.emission_intensity_european_electricity_gCO2eq_per_kWh(j);

        % Increased landfill
        MCS_out(i).increased_landfilling_Europe_emissions_to_air_kgCO2eq(j) = MCS_out(i).landfill_Europe_CO2_emitted_to_air_fossil_kgCO2(j)*MCS_in.gwp100_metric_co2(j) + MCS_out(i).landfill_Europe_CH4_emitted_to_air_fossil_kgCH4(j)*MCS_in.gwp100_metric_fossil_ch4(j) + MCS_out(i).landfill_Europe_CH4_emitted_to_air_biogenic_kgCH4(j)*MCS_in.gwp100_metric_biogenic_ch4(j);
        MCS_out(i).increased_landfilling_Europe_biogenic_carbon_stored_kgCO2eq(j) = MCS_out(i).landfill_Europe_C_stored_long_term_biogenic_kgC(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_C(j));
        MCS_out(i).increased_electricity_production_landfill_gas_Europe_kgCO2eq(j) = share_fossil_carbon_in_landfill_CH4_gas*MCS_out(i).landfill_gas_CH4_Europe_collected_kgCH4(j)*(MCS_in.molar_mass_CO2(j)/MCS_in.molar_mass_CH4(j));

        % CDR
        MCS_out(i).carbon_dioxide_removal_kgCO2eq(j) = MCS_out(i).incineration_Norway_CO2_removal_biogenic_kgCO2(j);

        % NET IN MODULES
        MCS_out(i).modules_A_C_ghg_emissions_kgCO2eq(j) = MCS_out(i).recycling_emissions_incl_pretreatment_kgCO2eq(j)... % Recycling emissions
            + MCS_out(i).local_transportation_during_waste_collection_kgCO2eq(j) ... % Local transportation
            + MCS_out(i).incineration_Norway_fossil_emissions_kgCO2eq(j) ... % Incineration in Norway
            + MCS_out(i).electricity_use_CCS_biogenic_CO2_kgCO2eq(j) ... % CCS electricity use, biogenic capture
            + MCS_out(i).electricity_use_CCS_fossil_CO2_kgCO2eq(j) ... % CCS electricity use, fossil capture
            + MCS_out(i).transport_of_fossil_CO2_to_reservoir_kgCO2eq(j) ... % transport of CO2, fossil carbon
            + MCS_out(i).transport_of_biogenic_CO2_to_reservoir_kgCO2eq(j)  ... % transport of CO2, biogenic carbon
            + MCS_out(i).leakage_CCS_supply_chain_fossil_CO2_kgCO2eq(j);

        MCS_out(i).modules_A_C_biogenic_CDR_kgCO2eq(j) = -(MCS_out(i).carbon_dioxide_removal_kgCO2eq(j)-MCS_out(i).leakage_CCS_supply_chain_biogenic_CO2_kgCO2eq(j)); % captured minus leakage

        MCS_out(i).module_D_avoided_fossil_GHG_emissions_kgCO2eq(j) = -MCS_out(i).avoided_polyethylene_production_kgCO2eq(j) ...% Avoided primary production of PE
            - MCS_out(i).avoided_energy_production_Norway_kgCO2eq(j) ... % Avoided El+HP
            - MCS_out(i).avoided_incineration_Norway_kgCO2eq(j) ... % Displaced incineration
            + MCS_out(i).increased_incineration_Europe_kgCO2eq(j) ... %Displaced incineration
            - MCS_out(i).avoided_waste_transportation_Europe_to_Norway_kgCO2eq(j) ... % Avoided transport
            - MCS_out(i).avoided_average_electricity_production_Europe_kgCO2eq(j) ... % Avoided el prod. Europe
            + MCS_out(i).increased_landfilling_Europe_emissions_to_air_kgCO2eq(j) ... % Avoided landfill, Europe
            + MCS_out(i).increased_electricity_production_landfill_gas_Europe_kgCO2eq(j) ...
            - MCS_out(i).avoided_natural_gas_fossil_electr_production_Europe_kgCO2eq(j) ...
            - MCS_out(i).avoided_electricity_use_CCS_biogenic_CO2_kgCO2eq(j) ...
            - MCS_out(i).avoided_electricity_use_CCS_fossil_CO2_kgCO2eq(j) ...
            - MCS_out(i).avoided_leakage_CCS_supply_chain_fossil_CO2_kgCO2eq(j) ...
            - MCS_out(i).avoided_transport_of_fossil_CO2_to_reservoir_kgCO2eq(j) ...
            - MCS_out(i).avoided_transport_of_biogenic_CO2_to_reservoir_kgCO2eq(j);

        MCS_out(i).module_D_lost_biogenic_CDR_kgCO2eq(j) = -MCS_out(i).increased_landfilling_Europe_biogenic_carbon_stored_kgCO2eq(j) ...
            + MCS_out(i).lost_biogenic_carbon_dioxide_removal_kgCO2eq(j);

        MCS_out(i).net_modules_A_D_kgCO2eq(j) = MCS_out(i).modules_A_C_ghg_emissions_kgCO2eq(j) + MCS_out(i).modules_A_C_biogenic_CDR_kgCO2eq(j) + MCS_out(i).module_D_lost_biogenic_CDR_kgCO2eq(j) + MCS_out(i).module_D_avoided_fossil_GHG_emissions_kgCO2eq(j);

        %MCS_out(i).waste_replaced_to_European_incineration


        %MCS_out(i).avoided_incineration_Norway_kgCO2eq =


        % Calc lower heating value, displaced waste


        %% CHECK LANDFILL GAS FOSSIL CO2 emissions. CH4-> CO2.


        % Calc emission intensity of fossil polyethylene incineration
        MCS_out(i).emission_intensity_fossil_pe_gCO2eq_per_kWh(j) = 10^6*MCS_in.carbon_content_polyethylene(j)*3.67/(MCS_in.conversion_factor_kWH_per_GJ(j)*MCS_in.lower_heating_value_polyethylene(j)*MCS_in.thermal_energy_efficiency_waste_incineration(j));


    end
end







end

