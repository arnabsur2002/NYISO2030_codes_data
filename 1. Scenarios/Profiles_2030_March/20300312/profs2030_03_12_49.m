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
	0.1575 0.1683 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.5436 4.5901 4.7183 0.4558 1.1073 71.2013 8.9002 16.67 41.5696 40.1106 22.2405 72.6406;
	11.6479 12.1867 4.3186 2.5691 3.9551 235.9795 29.4974 39.7375 112.1785 122.8875 59.9681 222.55;
	18.1805 16.6083 10.478 5.4858 6.3546 296.5175 37.0647 48.4276 131.9689 196.2872 107.5492 355.4773;
	22.8208 16.1544 12.5886 5.7368 7.3412 254.7232 31.8404 49.1389 121.6989 227.7235 138.0821 412.4087;
	24.1004 15.5631 13.5189 5.6684 7.0431 305.5599 38.195 51.488 143.2977 248.9396 179.5834 450.8312;
	25.0327 15.6047 13.6939 5.8655 6.9006 359.3144 44.9143 52.746 167.8781 257.3813 191.8821 466.1191;
	23.6721 16.3077 13.5423 9.6229 11.7213 430.7697 53.8462 66.1589 252.0762 341.4098 235.859 618.2951;
	18.0198 16.0153 12.7026 9.2069 11.8045 427.4542 53.4318 65.3601 250.6868 336.757 190.6471 609.869;
	8.3613 9.294 4.7874 7.2873 11.691 400.2182 50.0273 61.0247 234.9848 305.1726 95.5643 552.6694;
	1.6682 1.2532 0.8015 6.6066 13.2525 320.042 40.0052 48.818 186.5204 204.2184 77.2962 369.8408;
	0.8962 0.7333 0.5133 2.1567 4.1883 69.3965 8.6746 10.1676 43.9678 65.8333 39.3951 119.2245;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];