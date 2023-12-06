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
	0.4784 0.4018 0.4224 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	0.3328 1.4866 3.0024 4.9744 4.5466 263.7663 32.9708 16.8406 85.2449 13.1712 3.0342 23.8531;
	3.5948 4.8169 7.6593 3.9051 6.1834 453.7363 56.717 54.5814 250.4591 20.4108 2.0303 36.9641;
	15.3872 12.6024 13.5108 5.012 6.9574 463.5653 57.9457 66.0126 267.9686 25.2443 6.3421 45.7176;
	21.5161 14.3808 13.6183 4.632 5.1924 343.0959 42.887 54.1715 185.2327 40.8723 33.8254 74.0199;
	22.7624 15.8127 13.7153 3.989 5.5977 317.5558 39.6945 59.0395 193.8146 68.5713 52.4032 124.1831;
	24.2673 16.2605 13.768 2.0678 6.0179 295.3053 36.9132 61.7621 206.3932 92.4933 57.1655 167.5059;
	11.8523 9.3223 9.5046 1.3758 8.2073 121.6055 15.2007 27.458 125.4069 94.0526 52.3086 170.3298;
	8.9577 6.8048 8.3006 1.9927 8.3549 122.7255 15.3407 19.8232 100.7747 77.6066 44.738 140.546;
	5.186 4.5233 5.3701 3.0608 7.773 110.5303 13.8163 15.2828 67.8107 53.3791 34.4141 96.6699;
	1.0553 0.801 0.6007 1.8156 2.7344 45.5417 5.6927 6.9228 11.4659 10.4857 8.0054 18.9896;
	0.4552 0.3297 0.2871 0.3165 0.3955 21.0853 2.6357 3.121 7.8511 6.5126 3.4906 11.7943;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
