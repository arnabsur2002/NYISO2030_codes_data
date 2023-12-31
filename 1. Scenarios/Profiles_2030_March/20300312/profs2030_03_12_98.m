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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	2.25 1.3818 2.7062 5.3038 2.9062 161.6902 20.2113 28.2759 98.3371 188.572 22.2115 341.5051;
	6.5481 7.4926 8.2719 3.687 4.2405 288.8297 36.1037 32.0192 185.3457 194.4247 17.9873 352.1043;
	19.1903 16.2875 13.7955 5.0047 4.6308 324.3245 40.5406 41.8505 222.4845 213.7917 33.9729 387.178;
	26.0715 16.5177 13.8618 5.1554 2.7611 285.535 35.6919 57.5728 281.1926 277.4319 102.6625 502.4309;
	26.3671 16.5425 13.8339 5.7216 2.3774 298.0093 37.2512 63.0937 293.1279 337.8299 182.982 611.812;
	26.4099 16.5429 13.8125 5.5457 3.0348 320.1246 40.0156 61.2616 293.7961 355.3199 212.3362 643.4865;
	27.0463 17.0284 14.244 7.9196 10.1106 428.5346 53.5668 65.6124 282.9627 356.5563 254.4948 645.7256;
	26.6748 17.1792 14.3483 7.096 10.7876 429.2177 53.6522 65.3519 269.3805 351.2371 223.3198 636.0925;
	25.3894 17.1689 14.3459 4.7998 10.1174 405.5149 50.6894 65.6138 242.8423 331.2784 168.711 599.9471;
	14.4868 11.1422 9.8426 3.8098 11.5024 293.5971 36.6996 58.7851 161.5656 189.6109 60.9952 343.3865;
	0.9636 0.8163 0.5867 1.5084 3.5141 61.045 7.6306 10.7276 36.3542 65.7661 38.6692 119.1028;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
