% Integrating Scores with the NY Case Based on Mean Score -- Modifying PMAX 
% without Renewables (200 profiles)
% May, 2023
% Arnab Sur


define_constants
%dprefm = '2030_08';
dprefm = '2030_03';
dstart = 10;	
d = 7;

for ctn = dstart:dstart+d-1;
% Load the NY case
mpc = NYISO2030d; 
mpc = addfuelname(mpc);

% # of Generators
ngen_idx = isload(mpc.gen);                                    
ngen_real = find(ngen_idx == 0);
ngen_wind = mpc.iwind;
ngen_solar = mpc.isolar;
ngen_vres = union(ngen_wind,ngen_solar);
ngen_conv = setdiff(ngen_real,ngen_vres);

% Uploading Mean Score of Each Generator 
namescore = sprintf('mean_score_gen_hour_203003%2.2i_march.csv',ctn);
score = readmatrix(namescore);
score(1,:) = [];
%score(:,1) = [];
mean_score = mean(mean(score));


% Rerating: score > mean_score: no change; score <= mean_score: derate by 15%
nt = size(score,2);
changefactor = 0.85; 
gen_profiles_scores = zeros(nt,1,max(ngen_real)); % PMAX of the exports remain unchanged
for t = 1:nt
gen_profiles_scores(t,1,ngen_wind) = mpc.gen(ngen_wind,PMAX); % PMAX of the wind generators remain unchanged
gen_profiles_scores(t,1,ngen_solar) = mpc.gen(ngen_solar,PMAX); % PMAX of the solar generators remain unchanged
for i = 1:numel(ngen_conv)
    threshold = mean_score;
    if score(i,t) > threshold
       gen_profiles_scores(t,1,ngen_conv(i)) = mpc.gen(ngen_conv(i),PMAX);
    else gen_profiles_scores(t,1,ngen_conv(i)) = changefactor * mpc.gen(ngen_conv(i),PMAX);
    end 
end 
end 

dp = gen_profiles_scores;
datei = '2023.11.29';
namefile = sprintf('profgen_NYISO2030d_%s_%2.2i', dprefm, ctn);
startj = 1;
hourb = 0;
typt = 'w';
nzs = size(dp,3);
col = PMAX;
chgtype = 1;
table = CT_TGEN;
setprofinfosh(dp, datei, namefile, startj, hourb, typt, nzs);
end 
