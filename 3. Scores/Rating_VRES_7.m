% Integrating Scores with the NY case -- Modifying Availability of the 
% Renewables (based on Mean Profiles)
% October, 2022
% Arnab Sur


define_constants
%dprefm = '2030_08';
dprefm = '2030_03';
dstart = 10;	
nscen = 200; 
d = 7;
for ctn = dstart:dstart+d-1;;



% Load the NY case with Mean Wind Profile
mpc = NYISO2030d; 
mpc = addfuelname(mpc);

% -- transmat --
nameprofd = sprintf('profw%s_%2.2i_average', dprefm, ctn);
profiletr = getprofiles(nameprofd);
nt = size(profiletr.values, 1);			% typically 24, sometimes 28

for t = 1:nt
  transmat{1, t} = 1;              	% create deterministic transition probability matrix
end

contab = ex_contab();

xgd = loadxgendata('xgd_ny22_ucdsh', mpc);
nameprofw = sprintf('profw%s_%2.2i_average', dprefm, ctn); %wind profile
profiles = getprofiles(nameprofw, mpc.iwind);
nameprofs = sprintf('profs%s_%2.2i_average', dprefm, ctn); %solar profile
profiles = getprofiles(nameprofs, profiles, mpc.isolar);
mdi = loadmd(mpc, transmat, xgd, [], contab, profiles);

% # of Generators
ngen_idx = isload(mpc.gen);                                    
ngen_real = find(ngen_idx == 0);
ngen_wind = mpc.iwind;
ngen_solar = mpc.isolar;
ngen_nonwind = setdiff(ngen_real,ngen_wind);

% Uploading Mean Score of Each Generator 
namescore = sprintf('mean_score_gen_hour_203003%2.2i_march.csv',ctn);
score = readmatrix(namescore);
score(1,:) = [];
%score(:,1) = [];
export_gen = find(strcmp(mpc.genfuel,'import') & (mpc.gen(:,PMIN) < 0));
%export_score = zeros(numel(export_gen),nt);
for k = 1:numel(export_gen)
    score = [score(1:export_gen(k)-1,:);zeros(1,nt);score(export_gen(k):end,:)];
end 
%score = insertRow(score, export_score, export_gen);
mean_score = mean(mean(score));

% Mean scores of wind generators
for g = 1:numel(ngen_wind)
    %index = find(score(:,1) == ngen_wind(g));
    score_wind(g,:) = score(ngen_wind(g),:);    
end 


% Rerating: score > mean_score: no change; score <= mean_score: derate by 15%
changefactor = 0.85; 
for t = 1:nt
for i = 1:numel(ngen_wind)
     threshold = mean_score;
    if  score_wind(i,t) > threshold
       wind_profiles_scores(t,1,i) = mdi.tstep(t).OpCondSched.tab(i,7);
    else wind_profiles_scores(t,1,i) = changefactor * mdi.tstep(t).OpCondSched.tab(i,7);
    end 
end 
end 


% Mean scores of solar generators
for g = 1:numel(ngen_solar)
    %index = find(score(:,1) == ngen_solar(g));
    score_solar(g,:) = score(ngen_solar(g),:);    
end 


% Rerating: score > mean_score: no change; score <= mean_score: derate by 15%
changefactor = 0.85; 
for t = 1:nt
for j = 1:numel(ngen_solar)
     threshold = mean_score;
    if  score_solar(j,t) > threshold
       solar_profiles_scores(t,1,j) = mdi.tstep(t).OpCondSched.tab(numel(ngen_wind)+j,7);
    else solar_profiles_scores(t,1,j) = changefactor * mdi.tstep(t).OpCondSched.tab(numel(ngen_wind)+j,7);
    end 
end 
end 



% Creating the wind profiles
dp = wind_profiles_scores;
datei = '2023.05.10';
%namefile = sprintf('profw_scores_%s_%2.2i_%d', dprefm, ctn, jsel);
namefile = sprintf('profilew_NYISO2030d_scores_%s_%2.2i', dprefm, ctn);
startj = 1;
hourb = 0;
typt = 'w';
nzs = size(dp,3);
col = PMAX;
chgtype = 1;
table = CT_TGEN;
setprofinfosh(dp, datei, namefile, startj, hourb, typt, nzs);


% Creating the solar profiles
dp = solar_profiles_scores;
datei = '2023.05.10';
%namefile = sprintf('profw_scores_%s_%2.2i_%d', dprefm, ctn, jsel);
namefile = sprintf('profiles_NYISO2030d_scores_%s_%2.2i', dprefm, ctn);
startj = 1;
hourb = 0;
typt = 'w';
nzs = size(dp,3);
col = PMAX;
chgtype = 1;
table = CT_TGEN;
setprofinfosh(dp, datei, namefile, startj, hourb, typt, nzs);

end