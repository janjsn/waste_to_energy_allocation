function plot_K_values(WT_ED_array, description_array)




figure

for i = 1:length(WT_ED_array)
y_vec = zeros(1,5);
x_vec = ([1:1:length(y_vec)]);

y_vec(1) = WT_ED_array(i).K_WtE_lf;
y_vec(2) = WT_ED_array(i).K_WtE_wi_no_energy_rec;
y_vec(3) = WT_ED_array(i).K_WtECCS_lf;
y_vec(4) = WT_ED_array(i).K_WtECCS_wi_no_energy_rec;
y_vec(5) = WT_ED_array(i).K_WtECCS_wi_no_energy_rec_CCS;

scat = scatter(x_vec, y_vec);
hold on

scat.SizeData = 100;
scat.LineWidth = 1;

if WT_ED_array(i).is_sfh == 1
    scat.MarkerEdgeColor = 'blue';
elseif WT_ED_array(i).is_ab == 1
    scat.MarkerEdgeColor = 'red';
end

if WT_ED_array(i).is_european_eletricity == 1
    scat.Marker = "o";
    if WT_ED_array(i).is_gs_hp
    scat.Marker = 'diamond';
    end
end
if WT_ED_array(i).is_renewable_electricity == 1
     scat.Marker = "x";
     if WT_ED_array(i).is_gs_hp
         scat.Marker = '*';
     end
end
if WT_ED_array(i).is_ng_electricity == 1
    scat.Marker = "^";
    if WT_ED_array(i).is_gs_hp
         scat.Marker = 'v';
     end
end




xlim([0 6]);
ylim([0 1]);
end
legend(description_array);

end

