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
	0.127 0.1213 0.125 0.0 0.0 2.3527 0.2941 0.5857 1.2808 0.0 0.0 0.0;
	1.9329 2.1028 1.0972 5.1921 3.6237 121.992 15.249 23.8054 133.5167 82.6398 35.933 149.6611;
	2.4816 3.5225 1.0698 7.8203 10.6475 150.0674 18.7584 29.1889 172.8087 259.2327 88.3945 469.4721;
	5.1728 6.5682 1.7319 10.3591 12.6021 181.298 22.6622 32.001 160.5262 319.0218 124.8041 577.7504;
	21.2728 15.8731 11.0842 11.9658 14.249 392.495 49.0619 62.4956 249.641 294.6247 100.4684 533.5671;
	23.6823 16.0537 13.2545 11.8462 13.8777 372.4772 46.5596 60.6543 252.2634 296.9252 85.5001 537.7332;
	23.7717 16.0751 13.2624 11.551 13.1896 368.1746 46.0218 60.6072 257.1865 300.3906 72.7509 544.0092;
	22.3037 16.5492 13.5363 7.2226 8.4127 387.434 48.4293 65.2824 253.9529 290.7778 126.5355 526.6004;
	14.9082 13.8719 10.3435 6.0558 8.3654 391.6343 48.9543 67.6337 247.5126 268.5008 133.0324 486.2565;
	7.9137 7.4905 5.7075 4.1583 8.0377 377.7893 47.2237 67.4531 241.4376 227.4849 134.6122 411.9765;
	4.5507 3.5322 2.7095 2.4936 6.2047 231.5045 28.9381 41.9725 192.5193 58.1433 66.6484 105.2979;
	1.1064 0.7984 0.6236 0.7557 1.5528 63.844 7.9805 11.3944 41.3471 16.216 15.7408 29.3673;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
