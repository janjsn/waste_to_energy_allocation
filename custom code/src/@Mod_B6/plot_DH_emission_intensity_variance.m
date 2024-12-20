function plot_DH_emission_intensity_variance(obj, Stegmann_emission_intensities)


share_recovered_heat = [0:0.1:1];
share_other = 1-share_recovered_heat;
emission_intensity_peak_load = [0:1:250];

em_hp_embodied_gCO2eq_per_kWh = 21;
emission_intensity_european_elmix_ns3720 = 136;
emission_intensity_norwegian_elmix_ns3720 = 18;
emission_intensity_el_natural_gas = 486;
emission_intensity_el_pv = 41;

em_embodied_dh_infrastructure_gCO2eq_per_kWh = 3;

Stegmann_Western_Europe = Stegmann_emission_intensities(strcmp({Stegmann_emission_intensities.image_region_string},'WEU'));
Stegmann_Central_Europe = Stegmann_emission_intensities(strcmp({Stegmann_emission_intensities.image_region_string},'CEU'));

Stegmann_Western_Europe_SSP2 = Stegmann_Western_Europe(strcmp({Stegmann_Western_Europe.scenario},'SSP2')); 
Stegmann_Central_Europe_SSP2 = Stegmann_Central_Europe(strcmp({Stegmann_Central_Europe.scenario},'SSP2')); 

Stegmann_Western_Europe_SSP2_26 = Stegmann_Western_Europe(strcmp({Stegmann_Western_Europe.scenario},'SSP2_SPA0_26I_D')); 
Stegmann_Central_Europe_SSP2_26 = Stegmann_Central_Europe(strcmp({Stegmann_Central_Europe.scenario},'SSP2_SPA0_26I_D')); 

COP225 = 2.25;
COP5 = 5;

em_hp_cop_225_weu_ssp2 = em_hp_embodied_gCO2eq_per_kWh + Stegmann_Western_Europe_SSP2.emission_intensity_electricity_mean_2020_2070_gCO2eq_per_kWh/COP225;
em_hp_cop_225_ceu_ssp2 = em_hp_embodied_gCO2eq_per_kWh + Stegmann_Central_Europe_SSP2.emission_intensity_electricity_mean_2020_2070_gCO2eq_per_kWh/COP225;

em_hp_cop_225_weu_ssp2_26 = em_hp_embodied_gCO2eq_per_kWh + Stegmann_Western_Europe_SSP2_26.emission_intensity_electricity_mean_2020_2070_gCO2eq_per_kWh/COP225;
em_hp_cop_225_ceu_ssp2_26 = em_hp_embodied_gCO2eq_per_kWh + Stegmann_Central_Europe_SSP2_26.emission_intensity_electricity_mean_2020_2070_gCO2eq_per_kWh/COP225;

em_heat_weu_ssp2_vec(1:length(emission_intensity_peak_load)) = Stegmann_Western_Europe_SSP2.emission_intensity_heat_mean_2020_2070_gCO2eq_per_kWh;
em_heat_ceu_ssp2_vec(1:length(emission_intensity_peak_load)) = Stegmann_Central_Europe_SSP2.emission_intensity_heat_mean_2020_2070_gCO2eq_per_kWh;
em_heat_weu_ssp2_26_vec(1:length(emission_intensity_peak_load)) = Stegmann_Western_Europe_SSP2_26.emission_intensity_heat_mean_2020_2070_gCO2eq_per_kWh;
em_heat_ceu_ssp2_26_vec(1:length(emission_intensity_peak_load)) = Stegmann_Central_Europe_SSP2_26.emission_intensity_heat_mean_2020_2070_gCO2eq_per_kWh;


em_hp_cop_225_eu_mix =  em_hp_embodied_gCO2eq_per_kWh + emission_intensity_european_elmix_ns3720/COP225;
em_hp_cop_500_eu_mix = em_hp_embodied_gCO2eq_per_kWh + emission_intensity_european_elmix_ns3720/COP5;

em_hp_cop_225_renewable = em_hp_embodied_gCO2eq_per_kWh + emission_intensity_el_pv/COP225;
em_hp_cop_500_renewable = em_hp_embodied_gCO2eq_per_kWh + emission_intensity_el_pv/COP5;

em_hp_cop_225_natural_gas = em_hp_embodied_gCO2eq_per_kWh + emission_intensity_el_natural_gas/COP225;
em_hp_cop_500_natural_gas = em_hp_embodied_gCO2eq_per_kWh + emission_intensity_el_natural_gas/COP5;


B_factor = [0:0.01:1];
B_factor_selected = [0:0.2:1];

emission_intensity_contribution_recovered_heat_B_vec = obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_mean.*B_factor;
emission_intensity_contribution_recovered_heat_B_sel_vec= obj.emission_intensity_recovered_heat_delivered_gCO2eq_per_kWh_mean.*B_factor_selected;
emission_intensity_contribution_recovered_heat_std_B_sel_vec= obj.emission_intensity_recovered_heat_gCO2eq_per_kWh_std.*B_factor_selected;

em_B_shareRec_emPeak = zeros(length(B_factor_selected), length(share_recovered_heat), length(emission_intensity_peak_load));
em_B_shareRec_emPeak_std = zeros(length(B_factor_selected), length(share_recovered_heat), length(emission_intensity_peak_load));

for i = 1:length(B_factor_selected)
    for j = 1:length(share_recovered_heat)
        for k = 1:length(emission_intensity_peak_load)
            em_B_shareRec_emPeak(i,j,k) = em_embodied_dh_infrastructure_gCO2eq_per_kWh + emission_intensity_contribution_recovered_heat_B_sel_vec(i)*share_recovered_heat(j) + emission_intensity_peak_load(k)*share_other(j);
            em_B_shareRec_emPeak_std(i,j,k) = emission_intensity_contribution_recovered_heat_std_B_sel_vec(i)*share_recovered_heat(j);
        end
    end
end


% for i = 1:length(B_factor_selected)
%     figure
%     for j = 1:length(share_recovered_heat)
%         data = zeros(1,length(emission_intensity_peak_load));
%         data(1,:) = em_B_shareRec_emPeak(i,j,:);
%
%         plot(emission_intensity_peak_load, data)
%         hold on
%     end
% end

colors = [0 0.4470 0.7410
    0.8500 0.3250 0.0980
    0.9290 0.6940 0.1250
    0.4940 0.1840 0.5560
    0.4660 0.6740 0.1880
    0.3010 0.7450 0.9330
    0.6350 0.0780 0.1840];

%figure

for j = 1:length(share_recovered_heat)
    %subplot(3,4,j)
    figure
    box on

    em_hp_cop_225_weu_mix_ssp2_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_weu_ssp2;
    em_hp_cop_225_ceu_mix_ssp2_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_ceu_ssp2;

    em_hp_cop_225_weu_mix_ssp2_26_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_weu_ssp2_26;
    em_hp_cop_225_ceu_mix_ssp2_26_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_ceu_ssp2_26;

    em_hp_cop_500_ceu_mix_ssp2_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_500_eu_mix;

    em_hp_cop_225_pv_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_renewable;
    em_hp_cop_500_pv_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_500_renewable;

    em_hp_cop_225_natural_gas_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_225_natural_gas;
    em_hp_cop_500_natural_gas_vec(1:length(emission_intensity_peak_load)) = em_hp_cop_500_natural_gas;

 

    %plot(em_heat_ceu_ssp2_26_vec, emission_intensity_peak_load, 'LineWidth', 2,'Color', 'Cyan', 'LineStyle', ':');


    for i = 1:length(B_factor_selected)
        data = zeros(1,length(emission_intensity_peak_load));
        data(1,:) = em_B_shareRec_emPeak(i,j,:);

        data_err = zeros(1,length(emission_intensity_peak_load));
        data_err(1,:) = em_B_shareRec_emPeak_std(i,j,:);

        %plot(emission_intensity_peak_load, data)
        boundedline(emission_intensity_peak_load, data, data_err, 'alpha',  'Color', colors(i,:), 'LineWidth', 2)
        hold on
    end


    include_benchmarks = 1;
    alpha = 0.5;
    if include_benchmarks == 1
    %plot(emission_intensity_peak_load, em_hp_cop_225_weu_mix_ssp2_vec, 'LineWidth', 2,'Color', [1 0 1 0.4], 'LineStyle', '-.');
    hold on
    %plot(emission_intensity_peak_load, em_hp_cop_225_ceu_mix_ssp2_vec, 'LineWidth', 2,'Color', [1 0 1 0.4], 'LineStyle', ':');
    
    plot(emission_intensity_peak_load, em_hp_cop_225_weu_mix_ssp2_26_vec, 'LineWidth', 2,'Color', 	[0 1 0 alpha], 'LineStyle', '-.');
    plot(emission_intensity_peak_load, em_hp_cop_225_ceu_mix_ssp2_26_vec, 'LineWidth', 2,'Color', [0 1 0 alpha], 'LineStyle', ':');
    plot(emission_intensity_peak_load, em_hp_cop_225_natural_gas_vec, 'LineWidth', 2,'Color', [0 0 0 alpha], 'LineStyle', '--');

    %plot(emission_intensity_peak_load, em_hp_cop_225_natural_gas_vec, 'LineWidth', 2,'Color', [0 0 0 0.4], 'LineStyle', '--');
    add_vertical_lines = 0;
    if add_vertical_lines == 1
        plot(em_heat_weu_ssp2_vec, emission_intensity_peak_load, 'LineWidth', 2,'Color', [0.7 0 1 alpha], 'LineStyle', '-.');
        plot(em_heat_weu_ssp2_26_vec, emission_intensity_peak_load, 'LineWidth', 2,'Color', [0 1 1 alpha], 'LineStyle', '-.');
    end

    add_x_tick_marks =1;
    if add_x_tick_marks == 1
        scatter(em_heat_weu_ssp2_vec(1),0,'o','MarkerEdgeColor',[0.7 0 1])
        
    end

    %plot(em_heat_ceu_ssp2_vec, emission_intensity_peak_load, 'LineWidth', 2,'Color', [0.7 0 1], 'LineStyle', ':');

    

    %plot(emission_intensity_peak_load, em_hp_cop_500_eu_mix_vec, 'LineWidth', 2,'Color', 'Magenta', 'LineStyle', '--');

    %plot(emission_intensity_peak_load, em_hp_cop_225_pv_vec, 'LineWidth', 2,'Color', 'Blue', 'LineStyle', '--');
    %plot(emission_intensity_peak_load, em_hp_cop_500_pv_vec, 'LineWidth', 2,'Color', 'Magenta', 'LineStyle', '-.');

    
    %plot(emission_intensity_peak_load, em_hp_cop_500_natural_gas_vec, 'LineWidth', 2,'Color', 'Magenta', 'LineStyle', ':');
    end
    
    xlabel({'Other heat in mix (gCO2eq kWh^{-1})'});
    ylabel('District heating (gCO2eq kWh^{-1})');

    title([num2str(share_recovered_heat(j)*100) '% WtE share'])
    xlim([0 250]);
    ylim([0 250]);

    legend({'','B=0','', 'B=0.2', '','B=0.4','', 'B=0.6', '','B=0.8','', 'B=1', 'HP-WEU-SSP2-2.6', 'HP-CEU-SSP2-2.6', 'HP-Natural gas', 'Heat-WEU-SSP2', 'Heat-WEU-SSP2-2.6'},'Location','bestoutside')
    
    filename = ['output/DH_em_' num2str(share_recovered_heat(j)) '_share_WtE.pdf'];
    if exist(filename, 'file')
        delete(filename);
    end

    print('-vector','-dpdf', '-r1000', filename);
    close

end



plot_for_individual_B = 0;
if plot_for_individual_B == 1
    figure
    for i = 1:length(B_factor_selected)
        subplot(3,4,i);
        for j = 1:length(share_recovered_heat)
            data = zeros(1,length(emission_intensity_peak_load));
            data(1,:) = em_B_shareRec_emPeak(i,j,:);

            plot(emission_intensity_peak_load, data)
            hold on

        end
        title(['B=' num2str(B_factor_selected(i))])
        xlim([0 250]);
        ylim([0 250]);
    end
end

end

