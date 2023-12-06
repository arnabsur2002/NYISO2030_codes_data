% Generating Scenarios for NY case from PGscen
% Arnab Sur
% November 2023

nday = 7;
start = 10;


% Wind Scenarios -- NY case
mapping_wind = readtable('Wind_Mapping_NY_NREL2030all.csv');
wind_NREL = readtable('wind_meta.csv');


for j = start:start+nday-1
namefile = sprintf('CSV_files_PGscen/203003%d/wind',j)
cd(namefile)
mkdir('wind_NY')
for i = 1:numel(mapping_wind.name_NY)
    name_NREL = mapping_wind.name_NREL{i};
    windfarm = readtable(name_NREL);
    index_logical = strcmp(wind_NREL.Facility_Name,name_NREL);
    index = find(index_logical ==1);
    cap_NREL = wind_NREL.Capacity(index);
    cap_NY = mapping_wind.capacity_NY(i);
    factor = cap_NY/cap_NREL;
    scenarios_NREL = windfarm{2:end,3:end};
    scenarios_NY = factor*scenarios_NREL; 
    windfarm{2:end,3:end} = scenarios_NY;
    cd('wind_NY')
    name_NY = sprintf('%s.csv',mapping_wind.name_NY{i});
    writetable(windfarm,name_NY,'WriteVariableNames', 0); 
    cd ..
end 
cd ../../..
end


% Solar Scenarios -- NY case

mapping_solar = readtable('Solar_Mapping_NY_NREL2030all.csv');
solar_NREL = readtable('solar_meta.csv');

for j = start:start+nday-1
namefile = sprintf('CSV_files_PGscen/203003%d/solar',j)
cd(namefile)
mkdir('solar_NY')
for i = 1:numel(mapping_solar.name_NY)
    name_NREL = mapping_solar.name_NREL{i};
    solarsite = readtable(name_NREL);
    index_logical = strcmp(solar_NREL.site_ids,name_NREL);
    index = find(index_logical ==1);
    cap_NREL = solar_NREL.AC_capacity_MW(index);
    cap_NY = mapping_solar.capacity_NY(i);
    factor = cap_NY/cap_NREL;
    scenarios_NREL = solarsite{2:end,3:end};
    scenarios_NY = factor*scenarios_NREL; 
    solarsite{2:end,3:end} = scenarios_NY;
    cd('solar_NY')
    name_NY = sprintf('%s.csv',mapping_solar.name_NY{i});
    writetable(solarsite,name_NY,'WriteVariableNames', 0); 
    cd ..
end 
cd ../../..
end






