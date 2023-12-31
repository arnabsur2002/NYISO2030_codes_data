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
	0.4836 0.4018 0.4322 0.0 0.0 0.0 0.0 0.3414 0.0 0.0 0.0 0.0;
	10.7918 13.0322 9.8294 3.2718 2.3176 266.2096 33.2762 68.7597 75.6705 29.0077 8.3489 52.5332;
	19.5961 16.0261 13.1579 6.9918 7.8676 478.3925 59.7991 76.9729 258.4918 168.1355 20.9809 304.4945;
	23.0328 16.6083 13.8 10.0237 11.1864 481.7672 60.2209 78.6393 280.4723 253.6643 37.1021 459.3875;
	24.2998 16.3546 13.6408 10.6851 13.103 439.5639 54.9455 75.9747 270.4461 261.173 49.0693 472.9858;
	24.9863 16.4802 13.7627 10.8503 11.1875 400.3579 50.0447 74.998 251.8933 176.2557 50.6205 319.2001;
	24.0263 16.3954 13.769 9.8599 9.3212 346.6073 43.3259 72.5229 208.0791 120.4557 46.9263 218.1461;
	11.0754 11.4296 9.3447 5.6002 8.1557 81.0535 10.1317 40.7308 64.2924 110.9762 51.1871 200.9786;
	10.7844 11.4531 8.0086 4.4211 8.31 63.1406 7.8926 29.6495 66.2773 119.8037 51.7183 216.9652;
	8.8529 11.3637 5.9371 3.5726 8.5728 51.488 6.436 23.8701 69.5013 101.6277 44.2879 184.0484;
	6.1286 12.715 3.0006 2.777 3.5055 26.9149 3.3644 12.1169 26.4036 17.1241 9.7922 31.0119;
	0.7078 0.7029 0.3894 0.6471 0.2649 15.7493 1.9687 1.4941 3.1387 4.3002 3.7228 7.7878;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
