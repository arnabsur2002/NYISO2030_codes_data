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
	1.0474 0.8675 0.7686 0.0 0.0 14.7162 1.8395 4.9004 0.9504 0.0 0.0 0.0;
	18.4408 15.5553 9.6223 0.7669 1.4145 181.4771 22.6846 33.6011 114.9969 68.0673 27.4002 123.2702;
	17.4698 13.8513 10.2737 0.945 1.0626 297.0468 37.1309 50.2056 191.7974 251.6683 100.2536 455.7729;
	19.654 16.1576 12.7819 2.944 1.4493 340.5819 42.5727 60.1477 200.1806 346.6535 159.0494 627.7917;
	25.2049 16.3661 13.8 5.6316 3.5461 319.2914 39.9114 69.0196 99.6933 332.4206 187.639 602.0157;
	26.0519 16.5502 13.8 9.2714 5.6364 369.321 46.1651 66.0201 121.2346 344.6945 196.284 624.2439;
	26.129 16.5245 13.8 9.5269 5.8662 394.758 49.3448 63.4059 158.0098 337.4709 176.8379 611.1618;
	24.2636 16.0542 13.4455 3.0615 2.3152 331.561 41.4451 70.3898 129.3099 174.8208 64.6551 316.6016;
	19.4897 16.1523 13.3371 1.0852 1.2708 238.918 29.8648 71.4993 88.0257 104.1967 40.1527 188.7009;
	10.7369 14.1753 10.7311 0.6502 0.6757 133.3264 16.6658 69.705 60.597 62.9436 46.923 113.9912;
	3.4457 6.6139 3.2143 1.645 0.7354 110.5387 13.8173 44.9076 82.0515 44.3072 49.7038 80.2406;
	1.1859 0.9594 0.7439 1.0696 0.6929 89.7667 11.2208 12.3313 47.5587 21.2153 15.59 38.421;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
