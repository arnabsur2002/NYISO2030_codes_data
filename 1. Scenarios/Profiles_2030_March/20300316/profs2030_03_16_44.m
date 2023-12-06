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
	1.0429 0.8441 0.7082 0.0 0.0 9.4835 1.1854 4.1882 0.4191 0.0 0.0 0.0;
	9.0318 6.8444 5.6801 1.3976 2.5383 140.7325 17.5916 34.5798 102.0405 63.8752 23.2257 115.6784;
	19.4411 13.9902 10.8779 2.672 5.3651 114.9714 14.3714 48.3221 109.5401 171.8555 77.8662 311.2314;
	24.5435 16.6083 13.8 6.1521 7.6818 223.3311 27.9164 54.175 133.5767 254.1643 138.0877 460.293;
	26.2385 16.4766 13.8089 7.0843 8.919 408.0074 51.0009 61.8901 191.149 175.0305 180.4869 316.9813;
	25.8914 16.5136 13.8 10.1357 9.2772 430.9254 53.8657 68.5815 208.4904 170.609 159.3763 308.974;
	25.5996 16.5214 13.8 10.9343 9.1181 430.0241 53.753 72.2024 213.2569 199.0748 149.2929 360.5256;
	22.4882 15.5514 13.4455 8.6932 5.8474 414.8399 51.855 76.5159 193.341 183.0192 93.0453 331.4488;
	19.9628 11.7617 13.128 4.9867 4.2163 425.837 53.2296 74.2955 181.3117 176.3752 79.6018 319.4166;
	14.1027 6.5782 9.6177 3.0267 2.795 441.0625 55.1328 70.5636 167.2911 129.0568 60.3943 233.7226;
	4.3153 1.0969 2.009 1.8347 1.5393 390.7738 48.8467 44.333 155.6117 44.7396 20.2042 81.0236;
	1.1859 0.9594 0.7439 0.8848 1.0243 69.3402 8.6675 11.6654 38.0009 11.3065 0.0 20.4761;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
