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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.1882 0.4317 0.0 0.0 0.0;
	2.7994 2.7272 1.0263 5.5597 3.7775 14.835 1.8544 10.2053 36.6285 40.0201 9.2538 72.4766;
	11.5623 11.0041 8.4039 4.6011 4.1824 45.5364 5.6921 9.3215 28.6386 173.437 70.1344 314.0955;
	19.6852 16.3568 13.7224 4.9876 3.8311 59.6693 7.4587 14.0483 36.964 270.9451 124.2182 490.6832;
	21.2458 15.0733 13.1585 2.2372 2.1276 84.8798 10.61 37.3238 50.6836 179.3913 81.054 324.8788;
	21.4084 15.952 13.2499 5.7555 4.3159 120.0674 15.0084 20.968 54.4002 155.3747 43.1792 281.3845;
	23.3872 16.5069 13.739 7.4308 6.0442 136.0681 17.0085 13.41 66.8189 155.0741 33.9594 280.8401;
	23.5385 15.9262 13.4455 4.8298 4.9876 206.4697 25.8087 39.7396 70.0619 108.5418 30.0987 196.5699;
	20.0691 14.5356 13.1319 2.6892 3.3846 235.1192 29.3899 56.0527 68.4728 93.9673 30.7249 170.1754;
	11.8414 8.7159 9.7076 2.1515 1.8908 216.8799 27.11 58.2328 53.5094 63.5979 27.2303 115.1761;
	2.8563 2.152 3.2731 6.5713 1.517 101.1718 12.6465 38.6098 37.0164 28.9581 18.2006 52.4433;
	1.2675 1.0306 0.8423 1.8561 1.1554 62.1213 7.7652 11.2314 32.0809 15.43 9.9243 27.9438;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
