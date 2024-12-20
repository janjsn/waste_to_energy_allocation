classdef WT_ED
    %WT_ED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties

        is_renewable_electricity = 0;
        is_european_eletricity = 1;
        is_ng_electricity = 0;

        is_air2water_hp = 1;
        is_gs_hp = 0;

        is_sfh = 1;
        is_ab = 0;


        % Parameters
        emission_intensity_electricity_gCO2eq_per_kWh = 136;
        cop_hp = 2.25;
        emb_em_hp_gCO2eq_per_kWh = 21;
        emb_em_dh_infrastructure_gCO2eq_per_kWh = 3.1;
        efficiency_dh_grid = 0.91;
        
        gwp100_landfill = 1393;
        gwp100_wi = 518

        biogenic_carbon_landfill = -240;
        biogenic_carbon_wi_ccs = -476;
        
        
        ccs_captured_kgCO2_per_ton_waste = 945;
        ccs_captured_fossil_kgCO2_per_ton_waste = 436;
        ccs_electricity_use_kWh_per_kg_CO2 = 0.24;
        ccs_heat_use_kWh_per_kg_CO2 = 0.95;
        ccs_supply_chain_emissions_kgCO2_per_kgCO2 = 0.045;
        ccs_injection_losses_kgCO2_per_kgCO2 = 0.045;

        specific_energy_demand_current_kWh_m2_yr = 48;
        specific_energy_demand_passive_house_kWh_m2_yr = 15;

        heat_energy_recovery_kWh = 2695.6;
        heat_energy_recovery_wCCS = 1963;

        % Intermediate calcs
       
        gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste 

        gwp100_supply_chain_kgCO2_per_ton_waste
        gwp100_supply_chain_ccs_kgCO2_per_ton_waste


        %% Outputs
        floor_area_heated_energy_recovery_passive_house
        energy_demand_current_practice_kWh_per_year 
        energy_demand_passive_house_kWh_per_year


        landfill_current_practice = EM_SE;
        landfill_passive_house = EM_SE;
        waste_incineration_current_practice = EM_SE;
        waste_incineration_passive_house = EM_SE;
        energy_recovery_current_practice = EM_SE;
        energy_recovery_passive_house = EM_SE;
        waste_incineration_wCCS_current_practice = EM_SE;
        waste_incineration_wCCS_passive_house = EM_SE;
        energy_recovery_wCCS_current_practice = EM_SE;
        energy_recovery_wCCS_passive_house = EM_SE;

        % K values
        K_WtE_lf
        K_WtE_wi_no_energy_rec
        K_WtE_wi_no_energy_rec_CCS
        K_WtECCS_lf
        K_WtECCS_wi_no_energy_rec
        K_WtECCS_wi_no_energy_rec_CCS

        % Other
        B_eff_max

        District_heat_network

        B_star_1_WtE_lf
        B_star_1_WtE_wi_no_energy_rec
        %B_star_1_WtE_wi_no_energy_rec_CCS
        
        B_star_1_WtECCS_lf
        B_star_1_WtECCS_wi_no_energy_rec
        B_star_1_WtECCS_wi_no_energy_rec_CCS
        
        B_1_WtE_lf
        B_1_WtE_wi_no_energy_rec

        B_1_WtECCS_lf
        B_1_WtECCS_wi_no_energy_rec
        B_1_WtECCS_wi_no_energy_rec_CCS

        emission_intensity_WtE_del_lf_gCO2eq_per_kWh
        emission_intensity_WtE_del_wi_no_energy_rec_gCO2eq_per_kWh
        emission_intensity_WtECCS_del_lf_gCO2eq_per_kWh
        emission_intensity_WtECCS_del_wi_no_energy_rec_gCO2eq_per_kWh
        emission_int_WtECCS_del_wi_no_energy_rec_CCS_gCO2eq_per_kWh

        em_int_del_dh_WtE_lf_gCO2eq_per_kWh
        em_int_del_dh_WtE_wi_no_energy_rec_gCO2eq_per_kWh
        em_int_del_dh_WtECCS_lf_gCO2eq_per_kWh
        em_int_del_dh_WtECCS_wi_no_energy_rec_gCO2eq_per_kWh
        em_int_del_dh_WtECCS_wi_no_energy_rec_CCS_gCO2eq_per_kWh

        

    end
    
    methods
        function obj = WT_ED()
            obj = obj.do_calcs;
        end
        
        function obj = do_calcs(obj)
            %Delivered heat
            heat_delivered_to_buildings_kWh = obj.heat_energy_recovery_kWh*obj.efficiency_dh_grid;
            heat_delivered_to_buildings_ccs_kWh = obj.heat_energy_recovery_wCCS*obj.efficiency_dh_grid;

           %Energy recovery w/CCS
            obj.gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste = obj.gwp100_wi-obj.ccs_captured_fossil_kgCO2_per_ton_waste;
            
            % SUpply chain
            obj.gwp100_supply_chain_kgCO2_per_ton_waste = 10^-3*obj.emb_em_dh_infrastructure_gCO2eq_per_kWh*heat_delivered_to_buildings_kWh;

            obj.gwp100_supply_chain_ccs_kgCO2_per_ton_waste = (10^-3*obj.emb_em_dh_infrastructure_gCO2eq_per_kWh*heat_delivered_to_buildings_ccs_kWh) ...
                + obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_supply_chain_emissions_kgCO2_per_kgCO2 ...
                + obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_injection_losses_kgCO2_per_kgCO2 ...
                + 10^-3*obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_electricity_use_kWh_per_kg_CO2*obj.emission_intensity_electricity_gCO2eq_per_kWh;

            no_energy_recovery_gwp100_supply_chain_ccs_kgCO2_per_ton_waste =  obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_supply_chain_emissions_kgCO2_per_kgCO2 ...
                + obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_injection_losses_kgCO2_per_kgCO2 ...
                + 10^-3*obj.ccs_captured_kgCO2_per_ton_waste*obj.ccs_electricity_use_kWh_per_kg_CO2*obj.emission_intensity_electricity_gCO2eq_per_kWh;

            % Floor area
            obj.floor_area_heated_energy_recovery_passive_house = heat_delivered_to_buildings_kWh/obj.specific_energy_demand_passive_house_kWh_m2_yr;

            % Energy demand, current practice
            obj.energy_demand_current_practice_kWh_per_year = obj.floor_area_heated_energy_recovery_passive_house*obj.specific_energy_demand_current_kWh_m2_yr;
            obj.energy_demand_passive_house_kWh_per_year = obj.floor_area_heated_energy_recovery_passive_house*obj.specific_energy_demand_passive_house_kWh_m2_yr;
            
            % LF - CP
            obj.landfill_current_practice.landfill_kgCO2eq =obj.gwp100_landfill;
            obj.landfill_current_practice.heat_pump_kgCO2eq =10^-3* obj.energy_demand_current_practice_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.landfill_current_practice.waste_incineration_kgCO2eq = 0;
            obj.landfill_current_practice.other_dh_supply_chain_kgCO2eq = 0;
            obj.landfill_current_practice.biogenic_carbon_kgCO2eq = obj.biogenic_carbon_landfill;
            obj.landfill_current_practice = obj.landfill_current_practice.calc_nets();

            % LF - PH
            obj.landfill_passive_house.landfill_kgCO2eq =obj.gwp100_landfill;
            obj.landfill_passive_house.heat_pump_kgCO2eq = 10^-3*obj.energy_demand_passive_house_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.landfill_passive_house.waste_incineration_kgCO2eq = 0;
            obj.landfill_passive_house.other_dh_supply_chain_kgCO2eq = 0;
            obj.landfill_passive_house.biogenic_carbon_kgCO2eq  = obj.biogenic_carbon_landfill;
            obj.landfill_passive_house = obj.landfill_passive_house.calc_nets();
            
            % WI - CP
            obj.waste_incineration_current_practice.landfill_kgCO2eq =0;
            obj.waste_incineration_current_practice.heat_pump_kgCO2eq = 10^-3*obj.energy_demand_current_practice_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.waste_incineration_current_practice.waste_incineration_kgCO2eq = obj.gwp100_wi;
            obj.waste_incineration_current_practice.other_dh_supply_chain_kgCO2eq = 0;
            obj.waste_incineration_current_practice.biogenic_carbon_kgCO2eq = 0;
            obj.waste_incineration_current_practice = obj.waste_incineration_current_practice.calc_nets();

            % WI - PH
            obj.waste_incineration_passive_house.landfill_kgCO2eq =0;
            obj.waste_incineration_passive_house.heat_pump_kgCO2eq = 10^-3*obj.energy_demand_passive_house_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.waste_incineration_passive_house.waste_incineration_kgCO2eq = obj.gwp100_wi;
            obj.waste_incineration_passive_house.other_dh_supply_chain_kgCO2eq = 0;
            obj.waste_incineration_passive_house.biogenic_carbon_kgCO2eq = 0;
            obj.waste_incineration_passive_house = obj.waste_incineration_passive_house.calc_nets();

            % WtE - CP
            obj.energy_recovery_current_practice.landfill_kgCO2eq =0;
            obj.energy_recovery_current_practice.heat_pump_kgCO2eq = 10^-3*(obj.energy_demand_current_practice_kWh_per_year-heat_delivered_to_buildings_kWh)*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.energy_recovery_current_practice.waste_incineration_kgCO2eq = obj.gwp100_wi;
            obj.energy_recovery_current_practice.other_dh_supply_chain_kgCO2eq = 10^-3*heat_delivered_to_buildings_kWh*obj.emb_em_dh_infrastructure_gCO2eq_per_kWh;
            obj.energy_recovery_current_practice.biogenic_carbon_kgCO2eq = 0;
            obj.energy_recovery_current_practice = obj.energy_recovery_current_practice.calc_nets();

            % WtE - PH
            obj.energy_recovery_passive_house.landfill_kgCO2eq =0;
            obj.energy_recovery_passive_house.heat_pump_kgCO2eq = 10^-3*(obj.energy_demand_passive_house_kWh_per_year-heat_delivered_to_buildings_kWh)*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.energy_recovery_passive_house.waste_incineration_kgCO2eq = obj.gwp100_wi;
            obj.energy_recovery_passive_house.other_dh_supply_chain_kgCO2eq = 10^-3*heat_delivered_to_buildings_kWh*obj.emb_em_dh_infrastructure_gCO2eq_per_kWh;
            obj.energy_recovery_passive_house.biogenic_carbon_kgCO2eq = 0;
            obj.energy_recovery_passive_house = obj.energy_recovery_passive_house.calc_nets();

            % WI CCS - CP
            obj.waste_incineration_wCCS_current_practice.landfill_kgCO2eq = 0;   
            obj.waste_incineration_wCCS_current_practice.heat_pump_kgCO2eq = 10^-3*obj.energy_demand_current_practice_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.waste_incineration_wCCS_current_practice.waste_incineration_kgCO2eq = obj.gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste;
            obj.waste_incineration_wCCS_current_practice.other_dh_supply_chain_kgCO2eq = no_energy_recovery_gwp100_supply_chain_ccs_kgCO2_per_ton_waste;
            obj.waste_incineration_wCCS_current_practice.biogenic_carbon_kgCO2eq = obj.biogenic_carbon_wi_ccs;
            obj.waste_incineration_wCCS_current_practice = obj.waste_incineration_wCCS_current_practice.calc_nets();

            % WI CCS - PH
            obj.waste_incineration_wCCS_passive_house.landfill_kgCO2eq = 0;  
            obj.waste_incineration_wCCS_passive_house.heat_pump_kgCO2eq = 10^-3*obj.energy_demand_passive_house_kWh_per_year*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.waste_incineration_wCCS_passive_house.waste_incineration_kgCO2eq = obj.gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste;
            obj.waste_incineration_wCCS_passive_house.other_dh_supply_chain_kgCO2eq = no_energy_recovery_gwp100_supply_chain_ccs_kgCO2_per_ton_waste;
            obj.waste_incineration_wCCS_passive_house.biogenic_carbon_kgCO2eq = obj.biogenic_carbon_wi_ccs;
            obj.waste_incineration_wCCS_passive_house = obj.waste_incineration_wCCS_passive_house.calc_nets();

            % WtE CCS - CP
            obj.energy_recovery_wCCS_current_practice.landfill_kgCO2eq =0;
            obj.energy_recovery_wCCS_current_practice.heat_pump_kgCO2eq = 10^-3*(obj.energy_demand_current_practice_kWh_per_year-heat_delivered_to_buildings_ccs_kWh)*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.energy_recovery_wCCS_current_practice.waste_incineration_kgCO2eq = obj.gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste;
            obj.energy_recovery_wCCS_current_practice.other_dh_supply_chain_kgCO2eq = obj.gwp100_supply_chain_ccs_kgCO2_per_ton_waste;
            obj.energy_recovery_wCCS_current_practice.biogenic_carbon_kgCO2eq = obj.biogenic_carbon_wi_ccs;
            obj.energy_recovery_wCCS_current_practice = obj.energy_recovery_wCCS_current_practice.calc_nets();

            % WtE CCS - PH
            obj.energy_recovery_wCCS_passive_house.landfill_kgCO2eq =0;
            obj.energy_recovery_wCCS_passive_house.heat_pump_kgCO2eq = 10^-3*(obj.energy_demand_passive_house_kWh_per_year-heat_delivered_to_buildings_ccs_kWh)*(obj.emb_em_hp_gCO2eq_per_kWh + obj.emission_intensity_electricity_gCO2eq_per_kWh/obj.cop_hp);
            obj.energy_recovery_wCCS_passive_house.waste_incineration_kgCO2eq = obj.gwp100_energy_recovery_wCCS_kgCO2_per_ton_waste;
            obj.energy_recovery_wCCS_passive_house.other_dh_supply_chain_kgCO2eq = obj.gwp100_supply_chain_ccs_kgCO2_per_ton_waste;
            obj.energy_recovery_wCCS_passive_house.biogenic_carbon_kgCO2eq =  obj.biogenic_carbon_wi_ccs;
            obj.energy_recovery_wCCS_passive_house = obj.energy_recovery_wCCS_passive_house.calc_nets();

            obj.K_WtE_lf = (obj.landfill_current_practice.net_kgCO2eq-obj.landfill_passive_house.net_kgCO2eq)...
                /(((obj.landfill_current_practice.net_kgCO2eq-obj.landfill_passive_house.net_kgCO2eq))+(obj.landfill_current_practice.net_kgCO2eq-obj.energy_recovery_current_practice.net_kgCO2eq));
            
            obj.K_WtE_wi_no_energy_rec = (obj.waste_incineration_current_practice.net_kgCO2eq-obj.waste_incineration_passive_house.net_kgCO2eq)...
                /((obj.waste_incineration_current_practice.net_kgCO2eq-obj.waste_incineration_passive_house.net_kgCO2eq)+(obj.waste_incineration_current_practice.net_kgCO2eq-obj.energy_recovery_current_practice.net_kgCO2eq));
            
            obj.K_WtE_wi_no_energy_rec_CCS = (obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.waste_incineration_wCCS_passive_house.net_kgCO2eq)...
                /((obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.waste_incineration_wCCS_passive_house.net_kgCO2eq)+(obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.energy_recovery_current_practice.net_kgCO2eq));

            obj.K_WtECCS_lf = (obj.landfill_current_practice.net_kgCO2eq-obj.landfill_passive_house.net_kgCO2eq)...
                /(((obj.landfill_current_practice.net_kgCO2eq-obj.landfill_passive_house.net_kgCO2eq))+(obj.landfill_current_practice.net_kgCO2eq-obj.energy_recovery_wCCS_current_practice.net_kgCO2eq));
            
            obj.K_WtECCS_wi_no_energy_rec = (obj.waste_incineration_current_practice.net_kgCO2eq-obj.waste_incineration_passive_house.net_kgCO2eq)...
                /((obj.waste_incineration_current_practice.net_kgCO2eq-obj.waste_incineration_passive_house.net_kgCO2eq)+(obj.waste_incineration_current_practice.net_kgCO2eq-obj.energy_recovery_wCCS_current_practice.net_kgCO2eq));

            obj.K_WtECCS_wi_no_energy_rec_CCS = (obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.waste_incineration_wCCS_passive_house.net_kgCO2eq)...
                /((obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.waste_incineration_wCCS_passive_house.net_kgCO2eq)+(obj.waste_incineration_wCCS_current_practice.net_kgCO2eq-obj.energy_recovery_wCCS_current_practice.net_kgCO2eq));

        end

        function plot_system_expansion(obj)
            
            plotMatrix = zeros(8,5);
            nets = zeros(1,5);
            
            subvars = {'landfill_current_practice', 'landfill_passive_house', 'waste_incineration_current_practice', 'waste_incineration_passive_house'...
                'energy_recovery_current_practice', 'energy_recovery_passive_house', 'energy_recovery_wCCS_current_practice', 'energy_recovery_wCCS_passive_house'};

            for i = 1:length(subvars)
                plotMatrix(i,1) = obj.(subvars{i}).landfill_kgCO2eq;
                
                plotMatrix(i,2) = obj.(subvars{i}).waste_incineration_kgCO2eq;
                plotMatrix(i,3) = obj.(subvars{i}).other_dh_supply_chain_kgCO2eq;
                plotMatrix(i,4) = obj.(subvars{i}).heat_pump_kgCO2eq;
                plotMatrix(i,5) = obj.(subvars{i}).biogenic_carbon_kgCO2eq;

                nets(i) = obj.(subvars{i}).net_kgCO2eq; 
            end
            
            figure
            

            stack = bar(plotMatrix, 'stacked');
            hold on;
            stack(1).FaceColor = '#A9A9A9';
            stack(2).FaceColor = 'blue';
            stack(3).FaceColor = 'cyan';
            stack(4).FaceColor = '#964B00';
            stack(5).FaceColor = [0.4660 0.6740 0.1880];

            scatter([1:1:8], nets, 'MarkerEdgeColor','black');

            bench1(1:9) = nets(1);
            bench2(1:7) = nets(3);

            plot([1.1:1:9.1], bench1, 'LineWidth', 1,'Color','black', 'LineStyle', '--');
            plot([3.1:1:9.1], bench2, 'LineWidth', 1,'Color', [0.5 0.5 0.5], 'LineStyle', '--');


            legend({'Landfill (methane)',  'Waste incineration', 'Supply chain (DH and CCS)', 'Heat pump','Biogenic carbon sequestered', 'Net'});

            %ylim([-1000 3000])


        end

        function obj = set_to_Norwegian_el(obj)
            obj.emission_intensity_electricity_gCO2eq_per_kWh = 18;

            obj.is_renewable_electricity = 1;
            obj.is_european_eletricity = 0;
            obj.is_ng_electricity = 0;

            obj = obj.do_calcs();

            

        




        end
        function obj = set_ground_sourced_hp(obj)
            obj.cop_hp = 5;
            obj.is_air2water_hp = 0;
            obj.is_gs_hp = 1;
            
            obj = obj.do_calcs();
        end
        function obj = set_AB(obj)
            obj.specific_energy_demand_current_kWh_m2_yr = 29;
            obj.is_sfh = 0;
            obj.is_ab = 1;
            obj = obj.do_calcs();
        end
        function obj = set_SFH(obj)
            obj.specific_energy_demand_current_kWh_m2_yr = 48;
            obj.is_sfh = 1;
            obj.is_ab = 0;
            obj = obj.do_calcs();
        end
    end
end

