addpath(genpath(pwd()));

pos_lf = 5;
pos_modern_lf = 4;
pos_wi_oc = 2;


Input = Namelist;

do_household_and_CI_waste = 0;
do_only_wood = 0;
do_only_plastic = 0;
do_2035_scen3 = 0;
if do_household_and_CI_waste == 1
        % Data fra Lausselet et al. (2016)
        Input.msw_share_plastic_mass = [0.13];
        Input.msw_share_inert_mass = [0.13];
        Input.msw_share_paper_mass = [0.16];
        Input.msw_share_biowaste_mass = [0.26];
        Input.msw_share_wood_mass = [0.18];

elseif do_only_wood == 1
        Input.msw_share_plastic_mass = [0];
        Input.msw_share_inert_mass = [0];
        Input.msw_share_paper_mass = [0];
        Input.msw_share_biowaste_mass = [0];
        Input.msw_share_wood_mass = [1];

elseif do_only_plastic == 1
    Input.msw_share_plastic_mass = [1];
        Input.msw_share_inert_mass = [0];
        Input.msw_share_paper_mass = [0];
        Input.msw_share_biowaste_mass = [0];
        Input.msw_share_wood_mass = [0];
elseif do_2035_scen3 == 1
    Input.msw_share_plastic_mass = [0.219];
    Input.msw_share_inert_mass = [0.017];
    Input.msw_share_paper_mass = [0.03];
    Input.msw_share_biowaste_mass = [0.135];
    Input.msw_share_wood_mass = [0];
end

MCS = Input;

n_simulations = 10000;

n_steps = 200;

peak_location = 1;
min_location = 3;
max_location = 2;

fields = fieldnames(Input);


% Generate parameters through Monte Carlo Simulation. Triangular
% distribution.
for i = 3:length(fields)
    fields{i}
    var = Input.(fields{i});
    if length(Input.(fields{i})) == 3
        step = abs(var(max_location)-var(min_location))/n_steps;

        x = [var(min_location):step:var(max_location)];
        pd = makedist("Triangular", "a", var(min_location), "b", var(peak_location), "c", var(max_location));
        cdf_this = cdf(pd,x);
        
        rng(i, 'philox');
        random_seed = rand(1,n_simulations);

        output_this = zeros(1,n_simulations);
        for sims = 1:n_simulations
            [~,idx_this] = min(abs(cdf_this-random_seed(sims)));
            output_this(sims) = x(idx_this);

        end

        output_this(1) = var(peak_location);
    else
        
        output_this = zeros(1,n_simulations);
        output_this(1:end) = var(peak_location);
    end

    MCS.(fields{i}) = output_this;
end


MCS_output = do_MCS(MCS);


%% System expansion, treat mixed waste and heat floor area
SystExp = Combo;
SystExp.SFH_EUR_HP225 = WT_ED;
SystExp.SFH_NOR_HP225 = SystExp.SFH_EUR_HP225.set_to_Norwegian_el;
SystExp.SFH_EUR_HP5 = SystExp.SFH_EUR_HP225.set_ground_sourced_hp;
SystExp.SFH_NOR_HP5 = SystExp.SFH_NOR_HP225.set_ground_sourced_hp;

SystExp.AB_EUR_HP225 = SystExp.SFH_EUR_HP225.set_AB;
SystExp.AB_EUR_HP5 = SystExp.SFH_EUR_HP5.set_AB;
SystExp.AB_NOR_HP225 = SystExp.SFH_NOR_HP225.set_AB;
SystExp.AB_NOR_HP5 = SystExp.SFH_NOR_HP5.set_AB;

% Plot_simple_substitution_mixed_waste_tratemnt
plot_simple_substitution_mixed_waste_treatment


%% Module B6
Trondheim = Mod_B6;
Trondheim.SystExp = SystExp;

Trondheim = Trondheim.set_norwegian_electricity_parameterization_and_recalculate;

gwp100_heat_from_dh_facility_kgCO2eq_per_kWh = MCS_output(pos_modern_lf).avoided_incineration_Norway_kgCO2eq./MCS_output(pos_modern_lf).energy_produced_heat_kWh;
gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh = MCS_output(pos_modern_lf).emission_intensity_fossil_pe_gCO2eq_per_kWh;

Trondheim.efficiency_dh_network = MCS.efficiency_district_heating_grid;

gwp100_heat_from_dh_facility_actually_delivered_kgCO2eq_per_kWh = gwp100_heat_from_dh_facility_kgCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
gwp100_heat_from_dh_facility_actually_delivered_std = std(gwp100_heat_from_dh_facility_actually_delivered_kgCO2eq_per_kWh);
gwp100_heat_from_dh_facility_actually_delivered_mean = mean(gwp100_heat_from_dh_facility_actually_delivered_kgCO2eq_per_kWh);

gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered = gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered_std = std(gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered);
gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered_mean = mean(gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered);


Trondheim.emission_intensity_recovered_heat_gCO2eq_per_kWh = 10^3*gwp100_heat_from_dh_facility_kgCO2eq_per_kWh;
Trondheim.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh = 10^3*gwp100_heat_from_dh_facility_actually_delivered_kgCO2eq_per_kWh;

Trondheim.emission_intensity_recovered_heat_gCO2eq_per_kWh_std = std(Trondheim.emission_intensity_recovered_heat_gCO2eq_per_kWh);
Trondheim.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean = mean(Trondheim.emission_intensity_recovered_heat_gCO2eq_per_kWh);

Trondheim.emission_intensity_recovered_heat_fos_pe_unsus_gCO2eq_per_kWh = gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh;
Trondheim.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh = gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered;

Trondheim.emission_intensity_rec_heat_del_fos_pe_unsus_std = std(Trondheim.emission_intensity_recovered_heat_fos_pe_unsus_gCO2eq_per_kWh);
Trondheim.emission_intensity_rec_heat_del_fos_pe_unsus_mean = mean(Trondheim.emission_intensity_recovered_heat_fos_pe_unsus_gCO2eq_per_kWh);


Trondheim.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_std = 10^3*gwp100_heat_from_dh_facility_actually_delivered_std;
Trondheim.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_mean = 10^3*gwp100_heat_from_dh_facility_actually_delivered_mean;

Trondheim.emission_intensity_rec_heat_del_fos_pe_unsus_std = gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered_std;
Trondheim.emission_intensity_rec_heat_del_fos_pe_unsus_mean = gwp100_heat_fossil_polyethylene_gCO2eq_per_kWh_delivered_mean;


Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh = 10^3.*nor_i_ccs_em2air_fossil_contribution_gwp100_kgCO2eq_per_ton.*MCS_output(pos_wi_oc_ccs).mass_ratio_displaced_waste_to_incinerated_waste./(MCS_output(pos_wi_oc_ccs).heat_delivered_to_dh_network_kWh);
Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_mean = mean(Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh );
Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_std = std(Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh );

Trondheim.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh = Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
Trondheim.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_std = std(Trondheim.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);
Trondheim.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_mean = mean(Trondheim.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);


Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh = 10^3*(MCS_output(pos_wi_oc_ccs).modules_A_C_ghg_emissions_kgCO2eq - MCS_output(pos_wi_oc_ccs).electricity_use_CCS_fossil_CO2_kgCO2eq ...
    + MCS_output(pos_wi_oc_ccs).electricity_use_CCS_fossil_CO2_kWh.*18*10^-3)...
    ./MCS_output(pos_wi_oc_ccs).heat_delivered_to_dh_network_kWh;
Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_std = std(Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);
Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_mean =  mean(Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);

Trondheim.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh = Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
Trondheim.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_std = std(Trondheim.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh );
Trondheim.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_mean = mean(Trondheim.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh);

Trondheim.record_nor_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh = Trondheim.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh;
Trondheim.record_eur_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh = 10^3.*eur_i_ccs_em2air_fossil_contribution_gwp100_kgCO2eq_per_ton.*MCS_output(pos_wi_oc_ccs).mass_ratio_displaced_waste_to_incinerated_waste./(MCS_output(pos_wi_oc_ccs).heat_delivered_to_dh_network_kWh);
Trondheim.record_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh = Trondheim.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh; 
Trondheim.record_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh =  10^3*(MCS_output(pos_wi_oc_ccs).modules_A_C_ghg_emissions_kgCO2eq - MCS_output(pos_wi_oc_ccs).electricity_use_CCS_fossil_CO2_kgCO2eq ...
    + MCS_output(pos_wi_oc_ccs).electricity_use_CCS_fossil_CO2_kWh.*136*10^-3)...
    ./MCS_output(pos_wi_oc_ccs).heat_delivered_to_dh_network_kWh;

Trondheim.record_del_nor_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh = Trondheim.record_nor_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
Trondheim.record_del_eur_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh = Trondheim.record_eur_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;

Trondheim.record_del_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh = Trondheim.record_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;
Trondheim.record_del_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh = Trondheim.record_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh./MCS.efficiency_district_heating_grid;



Oslo = Trondheim.set_Oslo_parameterization();

Trondheim = Trondheim.calculate_emission_intensity_of_dh;
Oslo = Oslo.calculate_emission_intensity_of_dh;

Trondheim_CCS = Trondheim.switch_energy_recovery_to_ccs;
Oslo_CCS = Oslo.switch_energy_recovery_to_ccs;

Trondheim_eur = Trondheim.set_european_electricity_parameterization_and_recalculate;
Oslo_eur = Oslo.set_european_electricity_parameterization_and_recalculate;

Trondheim_eur_CCS = Trondheim_eur.switch_energy_recovery_to_ccs;
Oslo_eur_CCS =Oslo_eur.switch_energy_recovery_to_ccs;

Trondheim_80 = Trondheim.set_Trondheim_parameterization_80_sustainable();
Trondheim_80 = Trondheim_80.calculate_emission_intensity_of_dh();
Trondheim_80_eur = Trondheim_80.set_european_electricity_parameterization_and_recalculate;

Trondheim_80_CCS = Trondheim_80.switch_energy_recovery_to_ccs;
Trondheim_80_eur_CCS = Trondheim_80_eur.switch_energy_recovery_to_ccs;

Trondheim_90 = Trondheim.set_Trondheim_parameterization_90_sustainable();
Trondheim_90 = Trondheim_90.calculate_emission_intensity_of_dh();
Trondheim_90_eur = Trondheim_90.set_european_electricity_parameterization_and_recalculate;

Trondheim_90_CCS = Trondheim_90.switch_energy_recovery_to_ccs;
Trondheim_90_eur_CCS = Trondheim_90_eur.switch_energy_recovery_to_ccs;

Oslo_80 = Oslo.set_Oslo_parameterization_80_sustainable();
Oslo_80 = Oslo_80.calculate_emission_intensity_of_dh();
Oslo_80_eur = Oslo_80.set_european_electricity_parameterization_and_recalculate;
Oslo_80_CCS = Oslo_80.switch_energy_recovery_to_ccs;
Oslo_80_eur_CCS = Oslo_80_eur.switch_energy_recovery_to_ccs;

Oslo_90 = Oslo.set_Oslo_parameterization_90_sustainable();
Oslo_90 = Oslo_90.calculate_emission_intensity_of_dh();
Oslo_90_eur = Oslo_90.set_european_electricity_parameterization_and_recalculate;
Oslo_90_CCS = Oslo_90.switch_energy_recovery_to_ccs;
Oslo_90_eur_CCS = Oslo_90_eur.switch_energy_recovery_to_ccs;

Trondheim_2016 = Trondheim.set_Trondheim_parameterization_2016;
Oslo_2016 = Oslo.set_Oslo_parameterization_2016;






