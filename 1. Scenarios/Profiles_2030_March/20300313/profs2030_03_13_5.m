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
	3.9909 2.0039 2.639 0.4006 0.7436 42.2753 5.2844 25.0835 29.5305 12.2642 6.3957 22.2105;
	5.1686 2.9882 2.5929 3.2365 3.1026 196.1108 24.5139 69.592 209.6168 58.2181 17.6391 105.4333;
	9.168 7.025 6.1928 7.4208 6.8038 340.7692 42.5961 73.5651 255.477 131.9599 31.3671 238.9801;
	13.2016 8.9246 6.6593 3.5478 6.3353 178.9651 22.3706 54.3337 132.5309 137.5487 45.129 249.1015;
	22.0251 14.4464 11.8777 2.3409 6.7847 215.5548 26.9444 55.4006 160.5152 92.4214 51.8171 167.3756;
	25.0771 16.1525 13.6994 2.0018 7.0266 240.387 30.0484 55.1624 181.6823 67.9651 52.6886 123.0852;
	16.1368 9.6235 9.4837 2.0182 7.5826 77.2785 9.6598 11.4122 55.7209 72.3147 41.0468 130.9624;
	13.2025 7.0729 7.8841 1.6442 6.6918 60.9392 7.6174 7.913 33.6249 78.0521 29.1961 141.3527;
	8.1306 5.6218 5.5445 1.0609 4.8053 41.2565 5.1571 5.6162 16.8345 65.6942 19.7453 118.9727;
	2.2508 2.0678 2.2837 0.2393 0.2554 6.6331 0.8291 2.8094 0.0 13.5787 4.9487 24.5911;
	0.6354 0.5757 0.548 0.3456 0.2323 9.899 1.2374 2.5051 3.1636 3.1522 3.7968 5.7087;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
