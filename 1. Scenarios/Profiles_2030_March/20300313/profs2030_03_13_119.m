function solarprofile = ex_solar_profilesh1
%EX_WIND_PROFILE_D  Example wind_load_nyiso profile data for deterministic unit commitment.
% 2022.03.12
% Andres F. Ramirez


%% define constants
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
    MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
    QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
[CT_LABEL, CT_PROB, CT_TABLE, CT_TBUS, CT_TGEN, CT_TBRCH, CT_TAREABUS, ...
    CT_TAREAGEN, CT_TAREABRCH, CT_ROW, CT_COL, CT_CHGTYPE, CT_REP, ...
    CT_REL, CT_ADD, CT_NEWVAL, CT_TLOAD, CT_TAREALOAD, CT_LOAD_ALL_PQ, ...
    CT_LOAD_FIX_PQ, CT_LOAD_DIS_PQ, CT_LOAD_ALL_P, CT_LOAD_FIX_P, ...
    CT_LOAD_DIS_P, CT_TGENCOST, CT_TAREAGENCOST, CT_MODCOST_F, ...
    CT_MODCOST_X] = idx_ct;

solarprofile = struct( ...
    'type', 'mpcData', ...
    'table', CT_TGEN, ...
    'rows', [1:12], ...
    'col', PMAX, ...
    'chgtype', 1, ...
    'values', [] );
solarprofile.values(:,1,:) = [
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.4731 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	4.1341 0.8686 1.5423 1.6616 5.4221 98.0348 12.2544 43.0217 83.2135 15.0955 21.3911 27.338;
	18.9399 9.1876 10.5264 5.9878 10.2905 307.4273 38.4284 71.206 97.5255 44.7779 26.1254 81.093;
	23.791 16.5082 13.8 8.5756 11.2427 333.3948 41.6744 74.5374 89.5919 96.3776 36.1175 174.5404;
	24.2972 16.1547 13.6408 4.3029 5.7386 212.155 26.5194 61.0219 50.892 161.5603 39.9584 292.5867;
	25.0597 16.371 13.7627 3.9441 3.8651 230.3587 28.7948 56.5852 51.7781 229.3197 50.3322 415.2994;
	25.0771 16.3954 13.769 3.7772 2.6859 226.0793 28.2599 48.6008 52.4295 205.1519 51.7237 371.5313;
	14.4862 11.5249 9.6089 3.1462 2.3348 98.8114 12.3514 9.9647 48.6042 58.5186 29.5302 105.9776;
	14.2541 10.7968 8.8445 2.4435 1.9372 130.1662 16.2708 12.5881 76.6879 29.207 18.72 52.8941;
	9.33 7.0948 5.972 1.5852 1.5467 158.0503 19.7563 17.6094 93.7706 25.1454 13.8596 45.5385;
	3.4784 2.6774 2.3726 0.5343 0.0 194.6048 24.3256 12.6543 84.0745 17.4707 7.2432 31.6395;
	0.7798 0.6819 0.5071 0.3631 0.1725 32.9859 4.1232 2.7326 15.6824 32.5407 6.2285 58.9315;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];