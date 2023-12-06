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
	20.4885 12.1033 12.7631 1.8615 6.9309 244.3272 30.5409 64.0964 98.2878 58.7647 38.6195 106.4231;
	19.4399 13.8188 12.1171 6.3464 13.0783 376.3445 47.0431 75.43 107.9517 99.4601 122.8067 180.1228;
	22.642 16.5904 13.8 10.1373 13.5969 399.1618 49.8952 77.5232 147.9691 305.0017 228.9882 552.3598;
	26.334 16.6083 13.9108 11.5618 11.1167 365.6397 45.705 77.6173 248.5152 286.1242 254.3688 518.1726;
	26.6414 16.6196 14.2571 11.7955 10.1333 381.1888 47.6486 79.1703 274.3499 274.6138 236.6244 497.3273;
	26.6391 16.6083 14.1503 11.8629 9.7226 391.986 48.9982 79.324 278.4012 233.1616 224.077 422.257;
	25.1485 16.5753 13.8 11.9228 11.4343 420.6254 52.5782 76.032 267.7159 175.4242 180.1579 317.6944;
	16.1815 16.2346 13.3725 11.7843 12.0275 420.6321 52.579 76.5124 236.1507 170.6683 158.3847 309.0814;
	10.4772 12.0571 9.8166 10.0944 11.7958 402.9023 50.3628 74.913 186.9175 127.422 118.0784 230.762;
	8.8885 7.5124 6.1474 3.2339 8.5567 258.8885 32.3611 62.0126 60.7485 33.8 15.3033 61.2119;
	0.7149 0.6288 0.3855 1.2449 3.1989 51.5147 6.4393 9.5407 19.637 14.3431 13.8654 25.9754;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];