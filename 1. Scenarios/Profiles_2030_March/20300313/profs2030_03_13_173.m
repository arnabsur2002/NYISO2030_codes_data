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
	0.4941 0.4139 0.4447 0.0 0.0 0.6501 0.0813 0.3364 0.0 0.0 0.0 0.0;
	9.1464 7.5333 10.1901 0.6254 1.7511 390.4838 48.8105 64.3693 157.2442 17.2766 6.3328 31.2881;
	20.2625 15.0091 13.3065 0.6603 4.4414 427.7806 53.4726 75.0852 265.6636 20.5289 11.1498 37.1779;
	23.7905 16.6083 13.8384 1.9562 6.7737 435.99 54.4987 77.0274 275.4262 18.7838 11.2105 34.0176;
	24.7548 16.1547 13.6914 5.5467 6.227 345.0733 43.1342 71.786 217.5771 30.0196 10.2531 54.3658;
	25.0641 16.0945 13.7627 8.5343 7.148 358.6189 44.8274 69.3501 209.3462 41.4038 18.5617 74.9825;
	24.7994 15.2766 13.7507 9.5078 7.4913 343.9125 42.9891 66.2155 201.3273 40.2744 40.8379 72.9371;
	12.0456 7.0733 8.3618 6.0477 7.6661 180.9708 22.6213 41.7552 108.939 21.4016 72.9741 38.7585;
	9.2826 5.6784 6.6018 4.3263 7.1887 156.2785 19.5348 39.8201 94.3083 20.666 66.5458 37.4262;
	5.6558 4.1467 5.0673 2.7507 6.6338 138.6266 17.3283 37.3675 66.7979 24.2424 38.3462 43.9031;
	0.8577 0.6863 1.1261 1.1198 2.225 57.9784 7.2473 19.2257 7.3109 13.3531 7.0774 24.1826;
	0.3545 0.3047 0.2871 0.4199 0.8456 4.5156 0.5644 1.5408 2.2618 6.4942 3.9886 11.761;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];