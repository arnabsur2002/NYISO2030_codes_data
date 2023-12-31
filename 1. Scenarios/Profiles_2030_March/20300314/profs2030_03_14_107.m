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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	2.4689 1.1948 0.5576 1.9619 7.1406 15.9708 1.9964 10.5241 18.9655 63.8697 24.6642 115.6684;
	7.8797 5.8831 4.5208 5.8447 11.1533 45.6026 5.7003 23.4934 32.6091 232.8294 125.797 421.6554;
	14.4848 10.3042 8.5721 8.6987 12.1304 104.5618 13.0702 32.9553 69.5539 331.2695 183.7297 599.9311;
	22.2946 15.9224 13.2744 10.0747 11.5804 394.4399 49.305 64.8811 252.9468 332.5917 150.3853 602.3257;
	23.1171 15.9788 12.7274 10.8677 11.9706 365.9581 45.7448 60.6659 217.7001 325.6087 160.934 589.6793;
	17.8281 13.3305 8.918 10.9598 11.5726 321.6661 40.2083 52.3046 124.0401 310.3897 155.0718 562.1177;
	3.6529 7.9887 6.8982 4.3948 3.8798 262.8459 32.8557 27.8801 58.7712 181.152 104.8246 328.0673;
	3.8579 6.8385 6.2761 3.984 2.4876 308.4693 38.5587 42.543 176.6628 137.0802 93.2235 248.253;
	4.407 6.1253 5.4635 3.1802 2.5358 312.0404 39.0051 47.9338 214.7889 100.6427 82.5166 182.2646;
	5.1621 5.1349 3.0655 2.5643 3.947 110.1231 13.7654 20.0394 93.2266 37.8882 24.2036 68.6158;
	1.0116 0.8369 0.5882 1.2021 2.3057 33.705 4.2131 6.6804 20.5993 15.7389 17.1934 28.5033;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
