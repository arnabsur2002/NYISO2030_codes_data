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
	0.4731 0.4177 0.424 0.0 0.0 0.2665 0.0333 0.4981 0.2133 0.0 0.0 0.0;
	9.1589 7.2447 5.3662 3.672 5.0055 255.9269 31.9909 43.3079 81.6444 11.4218 7.0532 20.685;
	21.3487 15.5296 12.0452 5.8753 9.5828 440.3773 55.0472 73.4659 265.4158 19.6938 13.145 35.6656;
	23.9069 16.71 13.8406 7.9801 10.389 460.1229 57.5154 76.732 286.2012 36.9713 16.7744 66.9552;
	24.1256 16.3557 13.7552 5.9091 6.1324 422.6252 52.8282 62.5539 265.1876 97.7091 40.0531 176.9517;
	24.1228 16.371 13.7627 8.8037 8.4278 403.6528 50.4566 56.7568 234.6858 143.3786 54.0363 259.6596;
	22.3007 16.3954 13.769 9.8766 9.8138 359.2317 44.904 52.2198 191.2052 165.7455 63.1992 300.1661;
	12.9414 13.3745 10.0759 5.4793 8.6876 175.4123 21.9265 21.2939 53.3028 192.1741 67.779 348.0285;
	11.7653 13.1848 9.4011 2.3244 5.8088 161.3888 20.1736 23.9507 61.3251 177.8338 74.1993 322.0581;
	8.4501 10.1443 6.9101 0.9748 3.3066 196.0961 24.512 23.8632 77.4064 157.9358 86.8743 286.0228;
	2.7722 2.7632 3.1174 0.5897 0.3495 242.0596 30.2575 26.7464 80.4422 32.9251 91.5262 59.6275;
	0.3764 0.3658 0.4623 0.4365 1.1367 34.5594 4.3199 6.2286 18.8082 7.6634 20.9828 13.8785;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
