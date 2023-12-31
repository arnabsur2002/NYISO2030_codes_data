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
	1.019 0.8269 0.715 0.0 0.0 9.4869 1.1859 4.1882 0.4191 0.0 0.0 0.0;
	6.1597 3.4174 3.6221 0.433 0.4327 119.1905 14.8988 9.1598 24.8082 36.633 6.5131 66.3427;
	17.4649 13.7628 11.2471 1.6477 3.3067 322.5915 40.3239 30.2837 34.2861 175.8192 15.103 318.4097;
	23.4673 16.6083 13.8 5.7665 6.9333 387.9775 48.4972 47.0258 79.9805 312.8505 60.1851 566.5742;
	25.0582 16.3661 13.8 4.5179 5.8232 387.2678 48.4085 48.7816 165.8634 341.4103 149.7083 618.296;
	15.3104 11.1669 9.3856 3.2511 5.0143 325.6143 40.7018 41.8078 175.7902 353.8615 190.3828 640.8453;
	6.2098 3.6293 2.0392 2.6945 4.7027 265.8057 33.2257 41.6238 168.3683 354.7861 183.2536 642.5197;
	11.6399 3.8376 5.5176 3.2518 3.7789 327.9679 40.996 57.3876 95.7258 340.7229 75.0087 617.0512;
	14.5948 5.618 9.6413 3.3438 3.2924 353.6292 44.2036 60.2856 82.6754 306.4191 29.283 554.9269;
	12.4973 6.416 7.1005 2.0229 1.8044 350.904 43.863 56.1083 80.5745 179.5261 16.0033 325.1229;
	4.7336 2.6998 2.0336 0.713 0.6618 206.6391 25.8299 17.1351 89.503 50.8755 6.0818 92.1359;
	1.1859 0.9594 0.7439 0.6537 0.9065 63.647 7.9559 11.245 33.5405 16.5574 0.0 29.9856;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
