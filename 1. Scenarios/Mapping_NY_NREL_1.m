% eliminate ESS from 2030 case
% create info for wind and solar

% 2030 New York model

% 2022.11.14
% Alberto J. Lamadrid L.

define_constants


% create wind table info for use in PGScen
%addpath('~/gdrive/abscores_data/NYISO_scenarios/NYISO/parsed/MetaData');

% data from case file
% do not filter unique sites (per bus) for each dataset
winddatat_filt = readtable('windGenny2030');
latidx_w = find(string(winddatat_filt.Properties.VariableNames) == 'LatitudeOfBus');
lonidx_w = find(string(winddatat_filt.Properties.VariableNames) == 'LongitudeOfBus');
facidx_w = find(string(winddatat_filt.Properties.VariableNames) == 'NameOfBus');
capidx_w = find(string(winddatat_filt.Properties.VariableNames) == 'MaxMW');

% data from NREL sites
Wind_NREL_filt = readtable('wind_meta.csv');
latidx_n = find(string(Wind_NREL_filt.Properties.VariableNames) == 'lati');
lonidx_n = find(string(Wind_NREL_filt.Properties.VariableNames) == 'longi');
facidx_n = find(string(Wind_NREL_filt.Properties.VariableNames) == 'Facility_Name');
capidx_n = find(string(Wind_NREL_filt.Properties.VariableNames) == 'Capacity');

% cycle over locations
Mapping_Matrix = [];
for ct1 = 1:size(winddatat_filt, 1)
	for ct2 = 1:size(Wind_NREL_filt, 1)
		Mapping_Matrix(ct1, ct2) = distance('gc', table2array(winddatat_filt(ct1, [latidx_w, lonidx_w])), ...
			table2array(Wind_NREL_filt(ct2, [latidx_n, lonidx_n])));
	end
end

% find minimum distances and locations
[minm, idxm] = min(Mapping_Matrix, [], 2);

% add info
windf = [winddatat_filt(:, facidx_w), winddatat_filt(:, [latidx_w, lonidx_w]), ...
	Wind_NREL_filt(idxm, [facidx_n, latidx_n, lonidx_n]), winddatat_filt(:, capidx_w)];

% rename variables
windf.Properties.VariableNames{'NameOfBus'} = 'name_NY';
windf.Properties.VariableNames{'LatitudeOfBus'} = 'lat_NY';
windf.Properties.VariableNames{'LongitudeOfBus'} = 'lon_NY';
windf.Properties.VariableNames{'Facility_Name'} = 'name_NREL';
windf.Properties.VariableNames{'lati'} = 'lat_NREL';
windf.Properties.VariableNames{'longi'} = 'lon_NREL';
windf.Properties.VariableNames{'MaxMW'} = 'capacity_NY';

%writetable(windf, 'Wind_Mapping_NY_NREL2030all.csv')

% -----ooooo-----
% create solar table info for use in PGScen
%addpath('~/gdrive/abscores_data/NYISO_scenarios/NYISO/parsed/MetaData');

% data from case file
solardatat_filt = readtable('solarGenny2030');
latidx_w = find(string(solardatat_filt.Properties.VariableNames) == 'LatitudeOfBus');
lonidx_w = find(string(solardatat_filt.Properties.VariableNames) == 'LongitudeOfBus');
facidx_w = find(string(solardatat_filt.Properties.VariableNames) == 'NameOfBus');
capidx_w = find(string(solardatat_filt.Properties.VariableNames) == 'MaxMW');

% data from NREL sites
Solar_NREL_filt = readtable('solar_meta.csv');
latidx_n = find(string(Solar_NREL_filt.Properties.VariableNames) == 'latitude');
lonidx_n = find(string(Solar_NREL_filt.Properties.VariableNames) == 'longitude');
facidx_n = find(string(Solar_NREL_filt.Properties.VariableNames) == 'site_ids');
capidx_n = find(string(Solar_NREL_filt.Properties.VariableNames) == 'AC_capacity_MW');

% cycle over locations
Mapping_Matrix = [];
for ct1 = 1:size(solardatat_filt, 1)
	for ct2 = 1:size(Solar_NREL_filt, 1)
		Mapping_Matrix(ct1, ct2) = distance('gc', table2array(solardatat_filt(ct1, [latidx_w, lonidx_w])), ...
			table2array(Solar_NREL_filt(ct2, [latidx_n, lonidx_n])));
	end
end

% find minimum distances and locations
[minm, idxm] = min(Mapping_Matrix, [], 2);

% add info
solarf = [solardatat_filt(:, facidx_w), solardatat_filt(:, [latidx_w, lonidx_w]), ...
	Solar_NREL_filt(idxm, [facidx_n, latidx_n, lonidx_n]), solardatat_filt(:, capidx_w)];

% rename variables
solarf.Properties.VariableNames{'NameOfBus'} = 'name_NY';
solarf.Properties.VariableNames{'LatitudeOfBus'} = 'lat_NY';
solarf.Properties.VariableNames{'LongitudeOfBus'} = 'lon_NY';
solarf.Properties.VariableNames{'site_ids'} = 'name_NREL';
solarf.Properties.VariableNames{'latitude'} = 'lat_NREL';
solarf.Properties.VariableNames{'longitude'} = 'lon_NREL';
solarf.Properties.VariableNames{'MaxMW'} = 'capacity_NY';

%writetable(solarf, 'Solar_Mapping_NY_NREL2030all.csv')

