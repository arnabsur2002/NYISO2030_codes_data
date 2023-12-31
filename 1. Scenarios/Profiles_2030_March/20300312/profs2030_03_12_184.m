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
	9.9779 6.3807 5.8429 1.411 0.7532 32.0137 4.0017 8.2259 14.7688 24.063 20.3744 43.5783;
	20.6393 14.3073 13.2812 3.1988 3.6624 256.1233 32.0154 34.7655 74.2769 128.8075 30.8903 233.2712;
	23.3934 16.6083 13.8476 5.9531 5.7031 315.1548 39.3944 48.3814 113.8697 216.8542 108.4636 392.7242;
	25.2698 15.8608 13.7624 7.1333 5.046 153.2279 19.1535 49.977 77.7282 217.3683 178.2641 393.6552;
	25.9535 16.2807 13.7859 6.2308 3.7818 136.3185 17.0398 49.1862 113.3988 244.3058 217.1776 442.4392;
	26.0154 16.5139 13.7863 5.6351 3.3719 141.6675 17.7084 46.2328 140.0182 259.228 232.8832 469.4635;
	25.9923 16.2428 13.7855 10.1711 9.6306 271.4341 33.9293 53.7715 181.0066 341.4098 249.9421 618.2951;
	23.1534 15.7531 13.7008 10.9427 10.1919 294.1163 36.7645 56.1519 170.2562 336.3715 219.122 609.1709;
	17.407 10.1973 11.6533 10.2464 9.4387 284.0938 35.5117 56.8638 167.0534 255.3133 160.9044 462.3739;
	9.1 7.0427 6.3917 8.133 10.9804 311.6031 38.9504 55.9605 200.5903 167.771 85.6149 303.8342;
	1.1782 1.1318 0.8603 1.5857 3.4748 85.4556 10.6819 14.5132 51.5035 75.933 39.8749 137.5151;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
