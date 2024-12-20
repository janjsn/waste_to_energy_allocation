Trondheim = Mod_B6;
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
Oslo = Trondheim.set_Oslo_parameterization();
Trondheim = Trondheim.calculate_emission_intensity_of_dh;
Oslo = Oslo.calculate_emission_intensity_of_dh;
Trondheim_80 = Trondheim.set_Trondheim_parameterization_80_sustainable();
Trondheim_80 = Trondheim_80.calculate_emission_intensity_of_dh();
Oslo_80 = Oslo.set_Oslo_parameterization_80_sustainable();
Oslo_80 = Oslo_80.calculate_emission_intensity_of_dh();
Trondheim_2016 = Trondheim.set_Trondheim_parameterization_2016;
Oslo_2016 = Oslo.set_Oslo_parameterization_2016;

Trondheim_eur = Trondheim.set_european_electricity_parameterization_and_recalculate;
Trondheim_nor = Trondheim.set_norwegian_electricity_parameterization_and_recalculate;
Oslo_eur = Oslo.set_european_electricity_parameterization_and_recalculate;
Oslo_nor = Oslo.set_norwegian_electricity_parameterization_and_recalculate;

Trondheim_80_eur = Trondheim_80.set_european_electricity_parameterization_and_recalculate;
Trondheim_80_nor = Trondheim_80.set_norwegian_electricity_parameterization_and_recalculate;
Oslo_80_eur  = Oslo_80.set_european_electricity_parameterization_and_recalculate;
Oslo_80_nor = Oslo_80.set_norwegian_electricity_parameterization_and_recalculate;