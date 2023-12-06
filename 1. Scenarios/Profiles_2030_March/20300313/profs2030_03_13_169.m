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
	0.4836 0.4129 0.429 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	9.1816 7.8932 4.3949 1.2003 4.5814 218.914 27.3642 22.1833 63.3502 3.5175 2.6023 6.3702;
	21.5705 16.7263 13.4209 3.6473 6.7865 413.7639 51.7205 69.2835 182.4163 0.0 1.3723 0.0;
	24.8482 17.161 14.2765 7.3875 7.3585 434.2657 54.2832 73.242 219.7967 6.781 0.0769 12.2804;
	25.0714 16.4128 13.8347 5.5481 4.168 340.1851 42.5231 54.3306 172.5717 19.4473 4.8463 35.2192;
	25.3678 16.371 13.7627 5.2805 5.7276 389.0404 48.63 58.4607 216.9531 41.0122 13.1505 74.2734;
	25.0835 16.3954 13.045 4.1176 6.7746 406.2619 50.7827 63.6201 254.0753 69.3175 23.4462 125.5344;
	12.1891 6.476 5.3907 3.7476 6.6502 240.0228 30.0028 32.7522 203.3293 79.7161 46.7951 144.3664;
	7.9879 3.3703 3.9993 4.3608 5.7072 165.4946 20.6868 22.0671 155.7364 62.1032 43.1566 112.4692;
	4.7602 2.3224 2.95 3.8241 4.8744 118.6896 14.8362 11.3572 97.8769 36.9975 34.2543 67.0027;
	1.0697 0.6371 0.6583 1.588 1.5482 22.2721 2.784 2.5348 16.0632 10.6282 8.3263 19.2477;
	0.3663 0.3109 0.2969 0.4208 1.1585 9.8988 1.2373 2.4914 5.8346 7.2236 4.2179 13.0821;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];