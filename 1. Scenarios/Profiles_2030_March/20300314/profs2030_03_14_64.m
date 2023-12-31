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
	0.1135 0.133 0.1293 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.7342 2.8405 2.3916 2.5302 8.6813 28.5942 3.5743 0.3926 9.0896 26.4065 81.4598 47.8223;
	3.4623 3.8454 3.0408 6.0366 12.0121 126.2018 15.7752 9.2334 63.6856 154.1276 173.022 279.1261;
	4.7466 6.5031 4.54 9.0786 12.3682 178.6555 22.3319 25.1658 116.1403 257.2406 161.0975 465.8642;
	21.5273 16.1587 13.4066 10.9538 12.5322 371.5144 46.4393 65.1797 244.5057 261.9277 91.2629 474.3527;
	23.421 16.0912 13.2545 11.1561 13.3415 335.5078 41.9385 62.9148 221.8242 288.7314 110.3315 522.8943;
	23.0289 16.0751 13.2624 11.1819 13.4233 333.2642 41.658 61.7853 201.7349 289.5723 136.6123 524.4171;
	21.6546 16.5137 12.8233 5.0988 6.7782 332.6295 41.5787 62.5381 166.6843 144.3022 96.7327 261.3321;
	19.2085 15.1149 11.3548 5.0908 4.7621 323.442 40.4303 63.0373 157.5657 88.9058 54.7417 161.009;
	15.078 11.5733 9.4563 3.9777 3.8786 232.709 29.0886 57.3451 95.3372 45.1261 37.5797 81.7236;
	9.5199 7.1346 7.8349 2.3648 3.9098 15.9226 1.9903 6.768 5.9964 1.106 7.4462 2.003;
	1.0564 0.9504 0.755 0.6773 1.5162 35.0398 4.38 6.3514 20.4122 11.3267 8.4869 20.5127;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
