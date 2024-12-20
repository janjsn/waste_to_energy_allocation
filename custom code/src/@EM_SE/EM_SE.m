classdef EM_SE
    %EM_SE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        landfill_kgCO2eq
        heat_pump_kgCO2eq
        waste_incineration_kgCO2eq
        other_dh_supply_chain_kgCO2eq
        biogenic_carbon_kgCO2eq
        net_kgCO2eq

    end
    
    methods
        function obj = calc_nets(obj)
               obj.net_kgCO2eq = obj.landfill_kgCO2eq + obj.heat_pump_kgCO2eq + obj.waste_incineration_kgCO2eq + obj.other_dh_supply_chain_kgCO2eq + obj.biogenic_carbon_kgCO2eq;
        end
    end
end

