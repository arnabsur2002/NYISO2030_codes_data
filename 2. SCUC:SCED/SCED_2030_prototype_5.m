% Prototype for SCED run different days
% 2022.03.11
% Alberto J. Lamadrid L. and Arnab Sur 

%addpath('~/gdrive/tex_files/fund_arpae19sh/data_code/scuc/');
%input_dir = '~/gdrive/abscores_data/profiles/NYISO/';
%addpath(input_dir);

% location to save information
%fn_prefix = '~/gdrive/tex_files/fund_arpae19sh/data_LLNL/';		% functions
%output_dir = '~/gdrive/abscores_data/runs/NYISO/';						% all outputs
%addpath(output_dir);

% warm start for uc, standardize this
cd('SCUC_March_NYISO2030d')
warmset = load('scucfr_NYISO2030d_2030_03_10_solar(mean)');
cd ..

%dprefix = '/Users/ajlamadrid/gdrive/tex_files/fund_arpae19sh/data_code/scuc/';  % local
%dprefix = output_dir;  % local

%if ~exist(output_dir, 'dir')
 
    mkdir('SCED_March_NYISO2030d_2030_03_10');  
%end

%nts = 7;												% number of days
nts = 1;											    % number of days
dstart = 10;											% day started

define_constants

dprefm = '2030_03';									% matlab creates error when using '-' instead of '_'

% define options runs
mpopt = mpoption('verbose', 2, 'out.all', 1);
mpopt = mpoption(mpopt, 'opf.violation', 1e-2);
mpopt = mpoption(mpopt, 'most.dc_model', 1, 'most.security_constraints', 0);
mpopt = mpoption(mpopt, 'most.solver', 'GUROBI');
%mpopt = mpoption(mpopt, 'most.skip_prices', 1);
mpopt = mpoption(mpopt, 'most.uc.run', 0);

savefilet = 'scedfr_j_ny22sh';				% name of text file for tracking
savefilep = {'scedfr_NYISO2030d'};			% array of names to save cases
%mpcase_name = {'NYISO03082022v2f'};	% case to run
%mpcase_name = {'NYISO03082022v2d'};
%mpcase_name = {'NYISO220620d_v5'};
%mpcase_name = {'NYISO220620d_mean_v6'};

mpcase_name = {'NYISO2030d'};


nshifts = nts;											% number of runs

tev = zeros(nshifts, 1);						% time elapsed vector

% upload a profile to get dimensions of run (nt)
ctn = dstart;
jsel = 1;
cd('Profiles_2030_March/20300310')
nameprofd = sprintf('profd%s_%2.2i_%d', dprefm, ctn, jsel);
profiletr = getprofiles(nameprofd);
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
for ctn = dstart:dstart+nts-1
for jsel = 1:200													% scenario selected, 1 is base, cycle over these
    fprintf('==================================\n')
	fprintf('Scenario: %s-%2.2i_%d\n', dprefm, ctn, jsel);
	fprintf('==================================\n')
	% case information
	mpcase = loadcase(mpcase_name{1});
	mpcase = addfuelname(mpcase);			% add idxs for fuels	
 	xgd = loadxgendata('xgd_ny22_ucdsh', mpcase);

	% demand profiles
%	nameprofd = sprintf('profd%s_%2.2i', dprefm, ctn);
   cd('Profiles_2030_March/20300310')
	nameprofd = sprintf('profd%s_%2.2i_%d', dprefm, ctn, jsel);
	profiles = getprofiles(nameprofd);
    cd ../..
	
	% wind profiles
%	nameprofw = sprintf('profw%s_%2.2i', dprefm, ctn);
    cd('Profiles_2030_March/20300310')
	nameprofw = sprintf('profw%s_%2.2i_%d', dprefm, ctn, jsel);
 	profiles = getprofiles(nameprofw, profiles, mpcase.iwind);
    cd ../..

% solar profiles
    cd('Profiles_2030_March/20300310')
	nameprofs = sprintf('profs%s_%2.2i_%d', dprefm, ctn, jsel);
 	profiles = getprofiles(nameprofs, profiles, mpcase.isolar);
    cd ../..


 	% setup info for SCED runs
 	mdi = loadmd(mpcase, transmat, xgd, [], contab, profiles);
 	
 	%% creation of fixed reserve requirements
	reserves = fixreq_NewYork_bau2030f_revised;
% reserves = fixreqscucf(mpcase);
	reserves.qty(mpcase.iwind) = 0;
 	reserves.qty(mpcase.isolar) = 0;
 	%% modifying fixed reserve requirements
 	reservesd = reserves;
	rfact = 0.25;											% reserve factor, SCED runs aim for unit multiplier (1)
	reservesd.req = rfact * reservesd.req;
	
	for t = 1:nt
		mdi.FixedReserves(t, 1, 1) = reservesd; % include fixed zonal reserves
	end
 	
 	%mdi.UC.CommitKey = warmset.mdouc.UC.CommitKey;
% 	mdi.UC.CommitSched = warmset.mdouc.UC.CommitSched;
    mdi.UC.CommitSched(find(warmset.mdouc.UC.CommitSched == 0)) = 0 ;
	mdi.UC.CommitSched(find(warmset.mdouc.UC.CommitSched == 1)) = 1 ;
 	 	
 	mdo = most(mdi, mpopt);
 	tev(ctn, 1) = toc;
 	
    
    cd('SCED_March_NYISO2030d_2030_03_10')
 	save(sprintf('%s_%s_%2.2i_%2.2i', savefilep{1}, dprefm, ctn, jsel), 'mdo');    % save structure with results
 	cd ..
    
 	clearvars('mpcase', 'xgd', 'iwind', 'iess', 'mdi', 'mdo');
 	fprintf('----------------------------------\n')
 	fprintf('Time Run: %d\n', tev(ctn, 1));
 	fprintf('----------------------------------\n')
    
 end	
end 

fprintf('==================================\n')
fprintf('Time Run Total: %d\n', tev);
fprintf('==================================\n')
diary off;
