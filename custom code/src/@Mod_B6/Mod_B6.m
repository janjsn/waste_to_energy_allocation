classdef Mod_B6
    %MOD_B6 Summary of this class goes here
    %   Detailed explanation goes here

    properties
        heat_pump_energy_share_includes_ambient_heat = 0;
        emission_intensity_el_is_Nor = 1;
        emission_intensity_el_is_Eur = 0;
        is_ccs = 0;

        emission_intensity_recovered_heat_gCO2eq_per_kWh
        emission_intensity_recovered_heat_gCO2eq_per_kWh_std;
        emission_intensity_recovered_heat_gCO2eq_per_kWh_mean;

        emission_intensity_recovered_heat_fos_pe_unsus_gCO2eq_per_kWh
        emission_intensity_recovered_heat_fos_pe_unsus_std
        emission_intensity_recovered_heat_fos_pe_unsus_mean

        emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh
        emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_std;
        emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_mean;

        emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh
        emission_intensity_rec_heat_fos_pe_unsus_CCS_std
        emission_intensity_rec_heat_fos_pe_unsus_CCS_mean

        emission_intensity_electricity_boiler_gCO2eq_per_kWh = 31;
        emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh = 15;
        emission_intensity_bioenergy_biooil_gCO2eq_per_kWh = 4;
        emission_intensity_bioenergy_municipal_waste_gCO2eq_per_kWh = 11;
        emission_intensity_natural_gas_gCO2eq_per_kWh = 241;
        emission_intensity_light_oil_gCO2eq_per_kWh = 286;
        emission_intensity_electricity_heat_pump_gCO2eq_per_kWh = 31;
        emission_intensity_bioenergy_pellets_gCO2eq_per_kWh = 13;
        emission_intensity_bioenergy_biogas_gCO2eq_per_kWh = 11;
        emission_intensity_smoke_gas_gCO2eq_per_kWh = 0;
        emission_intensity_drainage_heat_gCO2eq_per_kWh = 0;
        emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh = 0;


        emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh
        emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_std
        emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_mean

        emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh
        emission_intensity_rec_heat_del_fos_pe_unsus_std
        emission_intensity_rec_heat_del_fos_pe_unsus_mean

        emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh
        emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_std;
        emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_mean;

        emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh
        emission_intensity_rec_heat_del_fos_pe_CCS_unsus_std
        emission_intensity_rec_heat_del_fos_pe_CCS_unsus_mean

        emission_intensity_norwegian_electricity_gCO2eq_per_kWh = 31;
        emission_intensity_european_electricity_gCO2eq_per_kWh = 334;
        emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh = 136;
        emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh = 18;

        year_FutureBuilt = 2023;
        emission_intensity_dh_FutureBuilt_tech_t_weight_gCO2eq_per_kWh = 0.067*2;
        emission_intensity_el_eu_FutBuilt_tech_t_weight_gCO2eq_per_kWh = 0.071;

        share_recovered_heat = 0.762; % SUSTAINABLE
        share_recovered_heat_fossil_pe_unsustainable = 0;
        share_recovered_heat_ccs = 0;
        share_recovered_heat_fossil_pe_unsustainable_ccs=0;
        share_electricity_boiler = 0.153;
        share_bioenergy_briquettes = 0.021;
        share_bioenergy_biooil = 0.008;
        share_bioenergy_pellets = 0;
        share_bioenergy_biogas = 0.006;
        share_natural_gas = 0.026;
        share_light_oil = 0.025;
        share_drainage_heat = 0;
        share_smoke_gas = 0;
        share_waste_heat_computer_centre = 0;
        share_electricity_heat_pump =0;

        efficiency_dh_network = 0.91;
        cop_heat_pump = 2.25;
        lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh = 21;
        lca_emissions_supply_chain_district_heating_grid = 3.1;
        emission_intensity_electricity_heat_pump_COP5_gCO2eq_per_kWh

        emission_intensity_dh_delivered_heat_gCO2eq_per_kWh
        emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_mean
        emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low
        emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high

        emission_intensity_weu28_el_dh_del_heat_gCO2eq_per_kWh
        emission_intensity_weu28_el_dh_del_heat_gCO2eq_per_kWh_mean
        emission_intensity_weu28_el_dh_del_heat_gCO2eq_per_kWh_std_low
        emission_intensity_weu28_el_dh_del_heat_gCO2eq_per_kWh_std_high

        emission_intensity_dh_del_heat_w2030CCS_gCO2eq_per_kWh
        emission_intensity_dh_del_heat_w2030CCS_gCO2eq_per_kWh_mean
        emission_intensity_dh_del_heat_w2030CCS_gCO2eq_per_kWh_std_low
        emission_intensity_dh_del_heat_w2030CCS_gCO2eq_per_kWh_std_high



        B_factor = [0:0.01:1];
        B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh
        B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh_std
        B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low
        B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high
        B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_2std_low
        B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_2std_high



        %%
        record_nor_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh
        record_eur_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh

        record_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh
        record_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh

        record_del_nor_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh
        record_del_eur_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh

        record_del_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh
        record_del_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh


        %% Calc B1
        share_other_heat
        emission_intensity_other_heat_delivered_gCO2eq_per_kWh

        true_emission_intensity_of_hp = 31;
        emission_intensity_ashp_cop225
        emission_intensity_gshp_cop5

        B_dh_max_ashp_cop225
        B_dh_max_gshp_cop5
        B_eff_max_ashp_cop225
        B_eff_max_gshp_cop5

        SystExp

        B_star_1_sfh_eur_ashp225




    end

    methods

        function obj = set_european_electricity_parameterization_and_recalculate(obj)
            obj.emission_intensity_el_is_Eur = 1;
            obj.emission_intensity_el_is_Nor = 0;

            obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh = obj.emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh;
            obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh = obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh+obj.emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh; %/obj.cop_heat_pump
            obj.true_emission_intensity_of_hp = (obj.emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh/obj.cop_heat_pump) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;
            obj.emission_intensity_ashp_cop225 = (obj.emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh/2.25) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;
            obj.emission_intensity_gshp_cop5 = (obj.emission_intensity_eu28_ns3720_2019_2075_gCO2eq_per_kWh/5) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;

            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh = obj.record_eur_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_std = std(  obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_mean = mean(obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh = obj.record_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_std = std(obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_mean = mean(obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh = obj.record_del_eur_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_std = std(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_mean = mean(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh = obj.record_del_eur_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_std = std(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh);
            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_mean = mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh);


            obj = obj.calculate_emission_intensity_of_dh;
        end

        function obj = set_norwegian_electricity_parameterization_and_recalculate(obj)
            obj.emission_intensity_el_is_Eur = 0;
            obj.emission_intensity_el_is_Nor = 1;

            obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh = obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh;
            obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh = obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh+obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh; %/obj.cop_heat_pump;
            obj.true_emission_intensity_of_hp = (obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh/obj.cop_heat_pump) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;
            obj.emission_intensity_ashp_cop225 = (obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh/2.25) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;
            obj.emission_intensity_gshp_cop5 = (obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh/5) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh;

            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh = obj.record_nor_emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_std = std(  obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh_mean = mean(obj.emission_intensity_recovered_heat_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh = obj.record_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_std = std(obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_mean = mean(obj.emission_intensity_rec_heat_fos_pe_unsus_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh = obj.record_del_nor_emission_intensity_rec_heat_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_std = std(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);
            obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_mean = mean(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh);

            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh = obj.record_del_nor_emission_int_rec_heat_fos_pe_CCS_gCO2eq_per_kWh;
            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_std = std(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh);
            obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_mean = mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh);


            obj = obj.calculate_emission_intensity_of_dh;



        end

        function obj = switch_energy_recovery_to_ccs(obj)
            obj.is_ccs =1;
            obj.share_recovered_heat_ccs = obj.share_recovered_heat;
            obj.share_recovered_heat = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = obj.share_recovered_heat_fossil_pe_unsustainable;
            obj.share_recovered_heat_fossil_pe_unsustainable = 0;

            obj = obj.calculate_emission_intensity_of_dh;
        end

        function obj = set_natural_gas_electricity_parameterization_and_recalculate(obj)
            em_intensity_natural_gas_electricity_gCO2eq_per_kWh = 537;%Scarlat et al.
            obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh = em_intensity_natural_gas_electricity_gCO2eq_per_kWh;
            obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh = obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh+em_intensity_natural_gas_electricity_gCO2eq_per_kWh;%/obj.cop_heat_pump;
            obj.emission_intensity_electricity_heat_pump_COP5_gCO2eq_per_kWh = obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kWh+em_intensity_natural_gas_electricity_gCO2eq_per_kWh/5;
            obj.true_emission_intensity_of_hp = (obj.em_intensity_natural_gas_electricity_gCO2eq_per_kWh/obj.cop_heat_pump) + obj.lca_emissions_other_life_cycle_stages_heat_pump_gCO2eq_per_kW;

            obj = obj.calculate_emission_intensity_of_dh;

        end

        function obj = set_new_heat_pump_COP(obj, COP)
            obj.cop_heat_pump = COP;
        end

        function obj = set_all_DH_parameterization(obj)
            obj.share_recovered_heat = 1;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0;
            obj.share_bioenergy_briquettes = 0;
            obj.share_bioenergy_biooil = 0;
            obj.share_bioenergy_pellets = 0;
            obj.share_bioenergy_biogas = 0;
            obj.share_natural_gas = 0;
            obj.share_light_oil = 0;
            obj.share_drainage_heat = 0;
            obj.share_smoke_gas = 0;
            obj.share_waste_heat_computer_centre = 0;
            obj.share_electricity_heat_pump = 0;

        end

        function obj = set_Trondheim_parameterization_80_sustainable(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.610; % SUSTAINABLE
            obj.share_recovered_heat_fossil_pe_unsustainable = 0.152;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.153;
            obj.share_bioenergy_briquettes = 0.021;
            obj.share_bioenergy_biooil = 0.008;
            obj.share_bioenergy_pellets = 0;
            obj.share_bioenergy_biogas = 0.006;
            obj.share_natural_gas = 0.026;
            obj.share_light_oil = 0.025;
            obj.share_drainage_heat = 0;
            obj.share_smoke_gas = 0;
            obj.share_waste_heat_computer_centre = 0;
            obj.share_electricity_heat_pump =0;
        end

        function obj = set_Trondheim_parameterization_90_sustainable(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.686; % SUSTAINABLE
            obj.share_recovered_heat_fossil_pe_unsustainable = 0.076;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.153;
            obj.share_bioenergy_briquettes = 0.021;
            obj.share_bioenergy_biooil = 0.008;
            obj.share_bioenergy_pellets = 0;
            obj.share_bioenergy_biogas = 0.006;
            obj.share_natural_gas = 0.026;
            obj.share_light_oil = 0.025;
            obj.share_drainage_heat = 0;
            obj.share_smoke_gas = 0;
            obj.share_waste_heat_computer_centre = 0;
            obj.share_electricity_heat_pump =0;
        end

        function obj = set_Oslo_parameterization_2016(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.576;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.280;
            obj.share_bioenergy_briquettes = 0.0;
            obj.share_bioenergy_biooil = 0.0018;
            obj.share_bioenergy_pellets = 0.0355;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.008;
            obj.share_light_oil = 0.002;
            obj.share_drainage_heat = 0.0;
            obj.share_smoke_gas = 0.0;
            obj.share_waste_heat_computer_centre = 0.054;
            obj.share_electricity_heat_pump = 0.032;
        end

        function obj = set_Trondheim_parameterization_2016(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.784;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.065;
            obj.share_bioenergy_briquettes = 0.021;
            obj.share_bioenergy_biooil = 0;
            obj.share_bioenergy_pellets = 0;
            obj.share_bioenergy_biogas = 0.0044;
            obj.share_natural_gas = 0.114;
            obj.share_light_oil = 0.006;
            obj.share_drainage_heat = 0;
            obj.share_smoke_gas = 0;
            obj.share_waste_heat_computer_centre = 0;
            obj.share_electricity_heat_pump = 0;
        end


        function obj = set_Oslo_parameterization(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.560;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.125;
            obj.share_bioenergy_briquettes = 0.0;
            obj.share_bioenergy_biooil = 0.08;
            obj.share_bioenergy_pellets = 0.107;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.014;
            obj.share_light_oil = 0.001;
            obj.share_drainage_heat = 0.038;
            obj.share_smoke_gas = 0.033;
            obj.share_waste_heat_computer_centre = 0.007;
            obj.share_electricity_heat_pump = 0.034;
        end

        function obj = set_Oslo_parameterization_80_sustainable(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.448;
            obj.share_recovered_heat_fossil_pe_unsustainable =0.112;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.125;
            obj.share_bioenergy_briquettes = 0.0;
            obj.share_bioenergy_biooil = 0.08;
            obj.share_bioenergy_pellets = 0.107;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.014;
            obj.share_light_oil = 0.001;
            obj.share_drainage_heat = 0.038;
            obj.share_smoke_gas = 0.033;
            obj.share_waste_heat_computer_centre = 0.007;
            obj.share_electricity_heat_pump = 0.034;
        end

        function obj = set_Oslo_parameterization_90_sustainable(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.504;
            obj.share_recovered_heat_fossil_pe_unsustainable =0.056;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0.125;
            obj.share_bioenergy_briquettes = 0.0;
            obj.share_bioenergy_biooil = 0.08;
            obj.share_bioenergy_pellets = 0.107;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.014;
            obj.share_light_oil = 0.001;
            obj.share_drainage_heat = 0.038;
            obj.share_smoke_gas = 0.033;
            obj.share_waste_heat_computer_centre = 0.007;
            obj.share_electricity_heat_pump = 0.034;
        end

        function obj = set_Stockholm_parameterization(obj)
            obj.heat_pump_energy_share_includes_ambient_heat = 0;
            obj.share_recovered_heat = 0.568;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0;
            obj.share_bioenergy_briquettes = 0.0;
            obj.share_bioenergy_biooil = 0.0;
            obj.share_bioenergy_pellets = 0.0;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.0;
            obj.share_light_oil = 0.0;
            obj.share_drainage_heat = 0.0;
            obj.share_smoke_gas = 0.0;
            obj.share_waste_heat_computer_centre = 0.0;
            obj.share_electricity_heat_pump = 0.0;
        end

        function obj = set_Gothenborg_parameterization(obj)
            %% Current source, Holm & Ottosson (2016) - The future development of district heating in Gothenburg
            obj.heat_pump_energy_share_includes_ambient_heat = 1;
            obj.share_recovered_heat = 0.568;
            obj.share_recovered_heat_fossil_pe_unsustainable =0;
            obj.share_recovered_heat_ccs = 0;
            obj.share_recovered_heat_fossil_pe_unsustainable_ccs = 0;
            obj.share_electricity_boiler = 0;
            obj.share_bioenergy_briquettes = 0.095;
            obj.share_bioenergy_biooil = 0.02;
            obj.share_bioenergy_pellets = 0.031;
            obj.share_bioenergy_biogas = 0.0;
            obj.share_natural_gas = 0.189;
            obj.share_light_oil = 0.0;
            obj.share_drainage_heat = 0.0;
            obj.share_smoke_gas = 0.0;
            obj.share_waste_heat_computer_centre = 0.0;
            obj.share_electricity_heat_pump = 0.116;

            obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh = obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh*1.3;
            obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh = obj.emission_intensity_nor_ns3720_2019_2075_gCO2eq_per_kWh*1.3/obj.cop_heat_pump;

        end

        function obj = calculate_emission_intensity_of_dh(obj)

            obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh = ( obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat...
                + obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable...
                + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs ...
                + obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + ((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network) + mean(obj.lca_emissions_supply_chain_district_heating_grid);

            %             emission_intensity_other_heat_delivered_gCO2eq_per_kWh
            %             B_dh_max_ashp_cop225
            %             B_dh_max_gshp_cop5
            %             B_eff_max_ashp_cop225
            %             B_eff_max_gshp_cop5
            %             B_max
            %

            obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_mean = mean(obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh);

            %             %del_heat_non_wte_std = std(((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )./obj.efficiency_dh_network));

            %del_heat_wte_std = std(obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat );

            del_heat_std = std(obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh);

            obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high  = obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_mean + del_heat_std;

            obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low =  obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_mean - del_heat_std;

            obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh = (mean((obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                +(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs) ...
                + (obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)/(1-obj.share_recovered_heat) + mean(obj.lca_emissions_supply_chain_district_heating_grid));

            obj.share_other_heat = 1-obj.share_recovered_heat-obj.share_recovered_heat_ccs;

            %%%%%%%%%%%
            obj.B_dh_max_ashp_cop225 = (mean(obj.efficiency_dh_network)*(obj.emission_intensity_ashp_cop225-mean(obj.lca_emissions_supply_chain_district_heating_grid)) ...
                - mean((obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                +(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + ((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )))) / (mean(obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat)+ mean(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs)) ;

            obj.B_dh_max_gshp_cop5 = (mean(obj.efficiency_dh_network)*(obj.emission_intensity_gshp_cop5-mean(obj.lca_emissions_supply_chain_district_heating_grid)) ...
                - mean((obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                +(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + ((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )))) / (mean(obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat) + mean(obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs)) ;

            %% FIX B_eff_max to include CCS
            weight_rec_heat = obj.share_recovered_heat/(obj.share_recovered_heat+obj.share_recovered_heat_ccs);
            weight_rec_heat_ccs = obj.share_recovered_heat_ccs/(obj.share_recovered_heat+obj.share_recovered_heat_ccs);

            obj.B_eff_max_ashp_cop225 = obj.emission_intensity_ashp_cop225/mean(obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh*weight_rec_heat+obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh*weight_rec_heat_ccs);
            obj.B_eff_max_gshp_cop5 = obj.emission_intensity_gshp_cop5/mean(obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh*weight_rec_heat+obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh*weight_rec_heat_ccs);




            obj.B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh = (mean( obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat ...
                +  obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs)*obj.B_factor...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs) )...
                + mean((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid);

            std_Bvec = zeros(1,length(obj.B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh));
            %%
            for i = 1:length(std_Bvec)
                em_this = ((obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh.*obj.share_recovered_heat ...
                    + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs)*obj.B_factor(i))...
                    + obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable...
                    + obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs...
                    + ((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                    + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                    + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                    + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                    + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                    + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                    + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                    + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                    + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                    + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                    + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                    )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid);

                std_Bvec(i) = std(em_this);
            end

            obj.B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh_std = std_Bvec;

            obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low = (mean( (obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh).*obj.share_recovered_heat + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs )*obj.B_factor)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + mean((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid)-std_Bvec;

            obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high = (mean( (obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh).*obj.share_recovered_heat + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs )*obj.B_factor)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + mean((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid) +std_Bvec;

            obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_2std_low = (mean( (obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh).*obj.share_recovered_heat + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs )*obj.B_factor)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + mean((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid) -(2*std_Bvec);

            obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_2std_high = (mean( (obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh).*obj.share_recovered_heat + obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh.*obj.share_recovered_heat_ccs )*obj.B_factor)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable)...
                + mean(obj.emission_intensity_rec_heat_del_fos_pe_CCS_unsus_gCO2eq_per_kWh.*obj.share_recovered_heat_fossil_pe_unsustainable_ccs)...
                + mean((obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
                + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
                + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
                + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
                + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
                + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
                + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
                + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
                + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
                + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
                + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
                )./obj.efficiency_dh_network)+ mean(obj.lca_emissions_supply_chain_district_heating_grid) + (2*std_Bvec);



            %             obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low = ( (obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean-obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_std).*obj.share_recovered_heat ...
            %                 + obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )/obj.efficiency_dh_network;
            %
            %             obj.emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high = ( (obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean+obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_std).*obj.share_recovered_heat ...
            %                 + obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )/obj.efficiency_dh_network;
            %
            %             obj.B_emission_intensity_dh_delivered_heat_mean_gCO2eq_per_kWh = ( obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean.*obj.share_recovered_heat.*obj.B_factor ...
            %                 + obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )/obj.efficiency_dh_network;
            %
            %             obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_low = ( (obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean-obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_std).*obj.share_recovered_heat.*obj.B_factor ...
            %                 + obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )/obj.efficiency_dh_network;
            %
            %             obj.B_emission_intensity_dh_delivered_heat_gCO2eq_per_kWh_std_high = ( (obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_mean+obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_std).*obj.share_recovered_heat.*obj.B_factor ...
            %                 + obj.emission_intensity_electricity_boiler_gCO2eq_per_kWh*obj.share_electricity_boiler ...
            %                 + obj.share_bioenergy_briquettes*obj.emission_intensity_bioenergy_briquettes_gCO2eq_per_kWh...
            %                 + obj.share_bioenergy_biooil*obj.emission_intensity_bioenergy_biooil_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_pellets*obj.emission_intensity_bioenergy_pellets_gCO2eq_per_kWh ...
            %                 + obj.share_bioenergy_biogas*obj.emission_intensity_bioenergy_biogas_gCO2eq_per_kWh ...
            %                 + obj.share_natural_gas*obj.emission_intensity_natural_gas_gCO2eq_per_kWh ...
            %                 + obj.share_light_oil*obj.emission_intensity_light_oil_gCO2eq_per_kWh ...
            %                 + obj.share_smoke_gas*obj.emission_intensity_smoke_gas_gCO2eq_per_kWh ...
            %                 + obj.share_drainage_heat*obj.emission_intensity_drainage_heat_gCO2eq_per_kWh ...
            %                 + obj.share_waste_heat_computer_centre*obj.emission_intensity_waste_heat_computer_centre_gCO2eq_per_kWh ...
            %                 + obj.share_electricity_heat_pump*obj.emission_intensity_electricity_heat_pump_gCO2eq_per_kWh...
            %                 )/obj.efficiency_dh_network;

            obj = obj.calc_B1;
        end

        function obj = calc_B1(obj)
            fields = fieldnames(obj.SystExp);

            for i = 1:length(fields)
                is_right_combo = 0;
                if obj.SystExp.(fields{i}).is_european_eletricity && obj.emission_intensity_el_is_Eur
                    is_right_combo = 1;
                    if obj.SystExp.(fields{i}).is_air2water_hp
                        obj.SystExp.(fields{i}).B_eff_max = obj.B_eff_max_ashp_cop225;
                        if obj.is_ccs == 0
                            obj.SystExp.(fields{i}).B_star_1_WtE_lf = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtE_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtE_wi_no_energy_rec;
                        elseif obj.is_ccs == 1
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_lf = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec_CCS;
                        end

                    elseif obj.SystExp.(fields{i}).is_gs_hp
                        obj.SystExp.(fields{i}).B_eff_max = obj.B_eff_max_gshp_cop5;
                        if obj.is_ccs == 0
                            obj.SystExp.(fields{i}).B_star_1_WtE_lf = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtE_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtE_wi_no_energy_rec;
                        elseif obj.is_ccs == 1
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_lf = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec_CCS;
                        end
                    end
                elseif obj.SystExp.(fields{i}).is_renewable_electricity && obj.emission_intensity_el_is_Nor
                    is_right_combo = 1;
                    if obj.SystExp.(fields{i}).is_air2water_hp
                        obj.SystExp.(fields{i}).B_eff_max = obj.B_eff_max_ashp_cop225;
                        if obj.is_ccs == 0
                            obj.SystExp.(fields{i}).B_star_1_WtE_lf = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtE_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtE_wi_no_energy_rec;
                        elseif obj.is_ccs == 1
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_lf = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS = obj.B_dh_max_ashp_cop225*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec_CCS;
                        end
                    elseif obj.SystExp.(fields{i}).is_gs_hp
                        obj.SystExp.(fields{i}).B_eff_max = obj.B_eff_max_gshp_cop5;
                        if obj.is_ccs == 0
                            obj.SystExp.(fields{i}).B_star_1_WtE_lf = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtE_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtE_wi_no_energy_rec;
                        elseif obj.is_ccs == 1
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_lf = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_lf;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec;
                            obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS = obj.B_dh_max_gshp_cop5*obj.SystExp.(fields{i}).K_WtECCS_wi_no_energy_rec_CCS;
                        end
                    end
                end

                if is_right_combo
                    % Set B_1
                    if obj.SystExp.(fields{i}).B_star_1_WtE_lf > obj.SystExp.(fields{i}).B_eff_max
                        obj.SystExp.(fields{i}).B_1_WtE_lf =  obj.SystExp.(fields{i}).B_eff_max;
                    else
                        obj.SystExp.(fields{i}).B_1_WtE_lf = obj.SystExp.(fields{i}).B_star_1_WtE_lf;
                    end

                    if obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec > obj.SystExp.(fields{i}).B_eff_max
                        obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec =  obj.SystExp.(fields{i}).B_eff_max;
                    else
                        obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec = obj.SystExp.(fields{i}).B_star_1_WtE_wi_no_energy_rec;
                    end

                    if obj.SystExp.(fields{i}).B_star_1_WtECCS_lf > obj.SystExp.(fields{i}).B_eff_max
                        obj.SystExp.(fields{i}).B_1_WtECCS_lf =  obj.SystExp.(fields{i}).B_eff_max;
                    else
                        obj.SystExp.(fields{i}).B_1_WtECCS_lf = obj.SystExp.(fields{i}).B_star_1_WtECCS_lf;
                    end

                    if obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec > obj.SystExp.(fields{i}).B_eff_max
                        obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec =  obj.SystExp.(fields{i}).B_eff_max;
                    else
                        obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec = obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec;
                    end

                    if obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS > obj.SystExp.(fields{i}).B_eff_max
                        obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS =  obj.SystExp.(fields{i}).B_eff_max;
                    else
                        obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS = obj.SystExp.(fields{i}).B_star_1_WtECCS_wi_no_energy_rec_CCS;
                    end

                    % Ensure above 0


                    share_recovered = obj.share_recovered_heat+obj.share_recovered_heat_ccs;
                    weight_ccs = obj.share_recovered_heat_ccs/(obj.share_recovered_heat+obj.share_recovered_heat_ccs);
                    weight_non_ccs = 1-weight_ccs;

                    emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh = weight_ccs*obj.emission_intensity_recovered_heat_del_CCS_gCO2eq_per_kWh_mean + weight_non_ccs*obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_mean;

                    if ~isempty( obj.SystExp.(fields{i}).B_1_WtE_lf)
                        % Check within interval 0-1
                        if  obj.SystExp.(fields{i}).B_1_WtE_lf < 0
                            obj.SystExp.(fields{i}).B_1_WtE_lf = 0;
                        elseif obj.SystExp.(fields{i}).B_1_WtE_lf > 1
                            obj.SystExp.(fields{i}).B_1_WtE_lf =1;
                        end
                        obj.SystExp.(fields{i}).emission_intensity_WtE_del_lf_gCO2eq_per_kWh = emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh*obj.SystExp.(fields{i}).B_1_WtE_lf;
                        obj.SystExp.(fields{i}).em_int_del_dh_WtE_lf_gCO2eq_per_kWh = obj.SystExp.(fields{i}).emission_intensity_WtE_del_lf_gCO2eq_per_kWh*share_recovered + obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh*obj.share_other_heat;
                    end
                    if ~isempty(obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec)
                        % Check within interval 0-1
                        if obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec  < 0
                            obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec = 0;
                        elseif obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec  >1
                            obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec  = 1;
                        end
                        %Calc
                        obj.SystExp.(fields{i}).emission_intensity_WtE_del_wi_no_energy_rec_gCO2eq_per_kWh = emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh*obj.SystExp.(fields{i}).B_1_WtE_wi_no_energy_rec;
                        obj.SystExp.(fields{i}).em_int_del_dh_WtE_wi_no_energy_rec_gCO2eq_per_kWh = obj.SystExp.(fields{i}).emission_intensity_WtE_del_wi_no_energy_rec_gCO2eq_per_kWh*share_recovered + obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh*obj.share_other_heat;
                    end
                    if ~isempty(obj.SystExp.(fields{i}).B_1_WtECCS_lf)
                         % Check within interval 0-1
                        if obj.SystExp.(fields{i}).B_1_WtECCS_lf <0
                            obj.SystExp.(fields{i}).B_1_WtECCS_lf = 0;
                        elseif obj.SystExp.(fields{i}).B_1_WtECCS_lf > 1
                            obj.SystExp.(fields{i}).B_1_WtECCS_lf = 1;
                        end
                        obj.SystExp.(fields{i}).emission_intensity_WtECCS_del_lf_gCO2eq_per_kWh = emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh*obj.SystExp.(fields{i}).B_1_WtECCS_lf;
                        obj.SystExp.(fields{i}).em_int_del_dh_WtECCS_lf_gCO2eq_per_kWh =  obj.SystExp.(fields{i}).emission_intensity_WtECCS_del_lf_gCO2eq_per_kWh*share_recovered + obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh*obj.share_other_heat;
                    end
                    if ~isempty(obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec)
                        % Check within interval 0-1
                        if obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec < 0
                            obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec = 0;
                        elseif obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec > 1
                            obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec = 1;
                        end
                        %Calc
                        obj.SystExp.(fields{i}).emission_intensity_WtECCS_del_wi_no_energy_rec_gCO2eq_per_kWh = emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh*obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec;
                        obj.SystExp.(fields{i}).em_int_del_dh_WtECCS_wi_no_energy_rec_gCO2eq_per_kWh =  obj.SystExp.(fields{i}).emission_intensity_WtECCS_del_wi_no_energy_rec_gCO2eq_per_kWh*share_recovered + obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh*obj.share_other_heat;
                    end
                    if ~isempty(obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS)
                        % Check between 0-1
                        if obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS < 0
                            obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS = 0;
                        elseif obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS >1 
                            obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS = 1;
                        end
                        %Calc
                        obj.SystExp.(fields{i}).emission_int_WtECCS_del_wi_no_energy_rec_CCS_gCO2eq_per_kWh = emisson_intensity_pipe_recovered_heat_ben_gCO2eq_per_kWh*obj.SystExp.(fields{i}).B_1_WtECCS_wi_no_energy_rec_CCS;
                        obj.SystExp.(fields{i}).em_int_del_dh_WtECCS_wi_no_energy_rec_CCS_gCO2eq_per_kWh =  obj.SystExp.(fields{i}).emission_int_WtECCS_del_wi_no_energy_rec_CCS_gCO2eq_per_kWh*share_recovered + obj.emission_intensity_other_heat_delivered_gCO2eq_per_kWh*obj.share_other_heat;
                    end
                end
            end
        end
    end

    %plot_DH_emission_intensity_variance(obj, Stegmann_emission_intensities)
end

