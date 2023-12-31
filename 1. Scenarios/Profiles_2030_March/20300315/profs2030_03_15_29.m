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
	0.4357 0.4257 0.3847 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	3.962 2.7169 1.8704 0.9377 1.1995 38.7966 4.8496 2.3442 21.2952 112.5477 71.6859 203.8246;
	9.2682 6.6388 5.3783 1.9056 3.0361 97.5835 12.1979 7.1074 46.8092 135.5098 117.4724 245.4091;
	16.5857 11.6991 9.2539 2.9041 2.9734 158.0363 19.7545 9.7566 54.3721 157.9521 119.5777 286.0523;
	22.7603 15.8708 13.8677 9.8126 10.2307 257.0736 32.1342 6.615 41.917 201.4626 47.2697 364.8501;
	23.398 15.9205 13.9605 10.6742 10.0775 291.9631 36.4954 13.7169 45.1765 230.6915 110.6308 417.7837;
	23.4185 15.6951 13.8484 10.9248 11.699 293.6049 36.7006 28.2683 52.9445 257.5699 167.9478 466.4607;
	18.6977 12.1598 13.6308 10.9981 11.4321 300.2524 37.5316 44.2309 170.9882 249.6903 194.1003 452.1907;
	13.6105 9.4141 13.2121 10.755 11.1352 278.4355 34.8044 31.0587 182.8666 240.6171 201.7068 435.7591;
	8.9687 6.7274 8.9087 9.2961 9.598 242.3932 30.2992 18.2177 169.7095 202.8031 149.6636 367.2776;
	2.4034 1.6932 1.8531 4.4935 4.1977 206.2758 25.7845 8.0703 145.4391 20.4419 9.7742 37.0204;
	0.7021 0.4018 0.4588 1.3911 2.4217 54.6879 6.836 5.7531 47.3747 5.8234 4.7097 10.5462;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
