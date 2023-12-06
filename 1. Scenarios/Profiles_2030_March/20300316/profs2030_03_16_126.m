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
	1.0111 0.8207 0.6949 0.0 0.0 9.4835 1.1854 4.4262 3.7463 0.0 0.0 0.0;
	6.3355 6.8773 5.561 1.4122 3.3962 321.7997 40.225 36.3363 254.0954 72.2237 10.8706 130.7976;
	13.9177 13.3171 12.1158 5.2657 8.1663 407.446 50.9307 53.7113 246.9083 249.8669 130.6184 452.5104;
	19.7681 16.4296 13.8 9.211 10.0129 398.609 49.8261 59.5605 210.4744 340.6524 237.2588 616.9235;
	23.9573 16.0323 13.8 7.9927 7.8089 252.0668 31.5084 56.3424 127.1703 262.9014 215.4891 476.116;
	23.0 15.8902 13.6862 7.4473 6.2525 165.2332 20.6541 45.5655 124.1361 246.2075 156.189 445.8833;
	23.7769 16.2017 13.7301 7.0758 5.1213 264.0724 33.0091 42.7474 144.7326 239.0484 138.2184 432.918;
	24.2421 15.9262 13.4634 4.8941 3.4668 389.393 48.6741 64.733 180.3818 178.0414 64.7456 322.4341;
	22.3468 15.6177 13.7425 3.9293 3.3423 416.5366 52.0671 71.2808 192.5166 155.7126 47.1335 281.9964;
	17.6663 12.2571 11.744 2.5553 2.7773 417.0215 52.1277 73.4449 211.0322 112.6915 31.3942 204.085;
	6.8308 3.2199 2.6857 2.7189 2.9916 372.2831 46.5354 65.2027 270.9805 48.2393 15.3611 87.3616;
	1.2059 0.9596 0.7494 1.2722 1.5073 93.8185 11.7273 15.4907 53.3156 17.5495 12.1221 31.7823;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];