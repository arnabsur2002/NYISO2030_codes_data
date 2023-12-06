% Prototype for Deterministic SCUC with Scores
% May, 2023
% Alberto J. Lamadrid L. & Arnab Sur



mkdir('SCUC_March_Score_NYISO2030d');

%nts = 7;										   % number of days
nts = 1;										   % number of time days
dstart = 10;									   % day started

define_constants

dprefm = '2030_03';									% March, 2030

% define options runs
mpopt = mpoption('verbose', 2, 'out.all', 1);
mpopt = mpoption(mpopt, 'opf.violation', 1e-2);
mpopt = mpoption(mpopt, 'most.dc_model', 1, 'most.security_constraints', 0);
mpopt = mpoption(mpopt, 'most.solver', 'GUROBI');
%mpopt = mpoption(mpopt, 'most.skip_prices', 1);
mpopt = mpoption(mpopt, 'most.uc.run', 0);

savefilet = 'scucfr_NYISO2030d_scores';				% name of text file for tracking
savefilepuc = {'scucfr_NYISO2030d_scores'};			% array of names to save cases
savefilep = {'scedfr_NYISO2030d_scores'};	% array of names to save cases

%mpcase_name = {'NYISO220605d'};
%mpcase_name = {'NYISO220620d_v3'};
%mpcase_name = {'NYISO220620d'};
%mpcase_name = {'NYISO220620d_v2'};
%mpcase_name = {'NYISO220620d_v4'};
mpcase_name = {'NYISO2030d'};


nshifts = nts;											% number of runs

tev = zeros(nshifts, 1);						% time elapsed vector

% upload a profile to get dimensions of run (nt)
ctn = dstart;
cd('Profiles_2030_March/20300310')
nameprof = sprintf('profd%s_%2.2i_average', dprefm, ctn);
profiletr = getprofiles(nameprof);
cd ../..

% information that does not depend on case
nt = size(profiletr.values, 1);			% typically 24, sometimes 28
% -- transmat --
for t = 1:nt
  transmat{1, t} = 1;              	% create deterministic transition probability matrix
end

contab = ex_contab();

diary([savefilet '.txt']);
tic
jsel = 1;														% scenario selected, 1 is base, cycle over these
for ctn = dstart:dstart+nts-1
	fprintf('==================================\n')
	fprintf('Period: NYISO_%s-%2.2i\n', dprefm, ctn);
	fprintf('==================================\n')
	% case information
	mpcase = loadcase(mpcase_name{1});
	mpcase = addfuelname(mpcase);			% add idxs for fuels	
 	xgd = loadxgendata('xgd_ny22_ucdsh', mpcase);

    cd('Profiles_2030_March/20300310')
    % demand profiles
    %nameprofd = sprintf('profd%s_%2.2i', dprefm, ctn);
	%nameprofd = sprintf('profiled_mean');
    nameprofd = sprintf('profd%s_%2.2i_average', dprefm, ctn);
	profiles = getprofiles(nameprofd);
    cd ../..

    % generator profiles
    ngen_idx = isload(mpcase.gen);                                    
    ngen_real = find(ngen_idx == 0);
    %ngen_wind = mpc.iwind;
    %ngen_nonwind = setdiff(ngen_real,ngen_wind);
	%nameprofgen = sprintf('profgen_NYISO220605_2019_08_02');
    cd('Score_March')
    nameprofgen = sprintf('profgen_NYISO2030d_%s_%2.2i', dprefm, ctn);
 	profiles = getprofiles(nameprofgen, profiles, 1:max(ngen_real));
    
    % wind profiles
    %nameprofw = sprintf('profw%s_%2.2i', dprefm, ctn);
	nameprofw = sprintf('profilew_NYISO2030d_scores_%s_%2.2i', dprefm, ctn);
 	profiles = getprofiles(nameprofw, profiles, mpcase.iwind);
    
    % solar profiles
	nameprofs = sprintf('profiles_NYISO2030d_scores_%s_%2.2i', dprefm, ctn);
 	profiles = getprofiles(nameprofs, profiles, mpcase.isolar);
    cd ..
    
    % setup info for SCUC run
 	mdi = loadmd(mpcase, transmat, xgd, [], contab, profiles);
 	
 	%% creation of fixed reserve requirements
	reserves = fixreq_NewYork_bau2030f_revised;
% reserves = fixreqscucf(mpcase);
	reserves.qty(mpcase.iwind) = 0;
	rfact = 1;											% debug, reserve factor to support convergence, aim for unit multiplier (1)
	reserves.req = rfact * reserves.req;

	for t = 1:nt
		mdi.FixedReserves(t, 1, 1) = reserves;          % include fixed zonal reserves
	end
 	
 	% run case with UC
 	mpoptuc = mpoption(mpopt, 'most.uc.run', 1);
	%mdi.UC.CommitKey(find(warmset.mdouc.UC.CommitSched == 0)) = 0;
	%mdi.UC.CommitKey(find(warmset.mdouc.UC.CommitSched == 1 )) = 2;    
	mdouc = most(mdi, mpoptuc);

 	tev(ctn, 1) = toc;
    
    cd('SCUC_March_Score_NYISO2030d')
 	save(sprintf('%s_%s_%2.2i(mean)', savefilepuc{1}, dprefm, ctn), 'mdouc');
 	cd ..
    
 	% setup info for SCED run
 	mdiuc = mdi;
 	clear('mdi');
 	mdi = loadmd(mpcase, transmat, xgd, [], contab, profiles);
 	
 	%% modifying fixed reserve requirements
 	reservesd = reserves;
	rfact = .25;											% reserve factor, SCED runs aim for unit multiplier (1)
	reservesd.req = rfact * reservesd.req;
	
	for t = 1:nt
		mdi.FixedReserves(t, 1, 1) = reservesd; % include fixed zonal reserves
	end
 	
 	%mdi.UC.CommitKey = mdouc.UC.CommitKey;
% 	mdi.UC.CommitSched = mdouc.UC.CommitSched;
  mdi.UC.CommitSched(find(mdouc.UC.CommitSched == 0)) = 0 ;
	mdi.UC.CommitSched(find(mdouc.UC.CommitSched == 1)) = 1 ;
 	 	
 	mdo = most(mdi, mpopt);
 	tev(ctn, 1) = toc;
 	
    cd('SCUC_March_Score_NYISO2030d')
 	save(sprintf('%s_%s_%2.2i(mean)', savefilep{1}, dprefm, ctn), 'mdo');    % save structure with results
 	cd ..
    
 	clearvars('mpcase', 'xgd', 'iwind', 'iess', 'mdi', 'mdo');
 	fprintf('----------------------------------\n')
 	fprintf('Time Run: %d\n', tev(ctn, 1));
 	fprintf('----------------------------------\n')
 	
	% calculation economic variables 	
%   optd.savename = sprintf('%s-data_c%s_%2.2i', savefilep{1}, dprefm, ctn);
%   optd.savepath = output_dir;
%   optd.tframe = nt;
%   nOut = 90;
%   rev = load(sprintf('%s_%s_%2.2i_%2.2i', savefilep{1}, dprefm, ctn, jsel));
%   [outArgs{1:nOut}] = data_mpsd(rev.mdo, optd);
%     
% 	nOut = 123;
% 	[outArgs{1:nOut}] = data_fxres(rev.mdo);

%	checkfroutsh

	% plots
%   optp.savefile = sprintf('%s-plotsr%s_%2.2i', savefilep{1}, dprefm, ctn);
%   savedvars = optd.savename;
%   optp.savepath = output_dir;
%   optp.profiles = [];
%   doplots_hpdcf(rev.mdo, savedvars, optp);

 	
end	

fprintf('==================================\n')
fprintf('Time Run Total: %d\n', tev);
fprintf('==================================\n')
diary off;