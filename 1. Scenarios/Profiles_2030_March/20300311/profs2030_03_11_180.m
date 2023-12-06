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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.5985 4.5663 2.4843 4.2841 3.2716 199.3598 24.92 49.4536 193.9359 68.5684 39.9255 124.1778;
	17.4893 13.6773 11.1551 9.9279 11.5314 375.6096 46.9512 76.6743 249.7336 198.9919 163.0645 360.3755;
	23.6915 16.6029 13.8 11.5232 12.7622 405.5141 50.6893 78.8849 245.4896 315.6489 221.2227 571.642;
	26.5075 16.6083 13.8042 11.2835 9.9876 370.2732 46.2842 72.9162 244.7915 268.4307 197.7891 486.1296;
	26.3988 16.5172 13.8 11.4504 9.821 351.9559 43.9945 68.2903 247.5178 307.9412 216.0845 557.6834;
	26.3639 16.5279 13.3714 11.4555 9.8392 310.9638 38.8705 66.0047 250.3718 332.1203 223.615 601.4718;
	26.3192 16.5874 13.7129 11.3856 10.947 317.6535 39.7067 70.3629 250.0398 258.5615 209.6409 468.2564;
	23.4386 16.5974 13.8 11.0005 10.7527 343.243 42.9054 73.1813 228.5851 200.1786 183.0823 362.5247;
	17.9786 12.655 12.179 5.7601 8.9172 348.5273 43.5659 71.8736 187.8156 119.4662 143.754 216.3541;
	9.2224 5.9567 6.0261 2.5314 3.0691 139.3124 17.4141 47.6232 74.8785 40.017 60.6205 72.4711;
	0.8077 0.68 0.4001 1.3359 2.641 44.3341 5.5418 8.9596 19.8763 22.4018 21.1748 40.5698;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
