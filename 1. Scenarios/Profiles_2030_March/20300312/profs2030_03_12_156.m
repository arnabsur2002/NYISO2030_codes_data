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
	0.1575 0.1684 0.2494 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.1793 7.8223 5.8751 1.6683 0.1614 54.3569 6.7946 44.307 89.1476 39.121 23.9533 70.8484;
	9.616 12.9591 10.3319 2.3511 0.1972 81.1101 10.1388 51.6044 113.4445 90.6947 73.7752 164.2487;
	14.0662 16.4153 13.714 3.1041 0.2243 137.0946 17.1368 46.9119 127.5062 114.0746 110.4684 206.5898;
	25.5949 16.474 13.7634 3.3185 0.7897 237.1534 29.6442 29.4682 146.9759 55.5714 143.8497 100.6401;
	25.9535 16.5355 13.7859 4.2985 0.6325 259.2265 32.4033 28.1622 143.3428 88.2753 142.7686 159.8671;
	25.964 16.5355 13.7863 4.8691 0.6614 263.7642 32.9705 37.9304 141.146 132.806 167.7577 240.5125;
	25.9668 16.6084 13.9923 7.972 1.9276 405.5781 50.6973 65.9273 223.0423 341.4098 256.724 618.2951;
	23.8316 16.4795 14.1379 7.8929 1.8976 422.1806 52.7726 67.2874 234.3399 337.2825 254.5667 610.8207;
	21.6518 16.1052 14.2211 6.3152 2.7636 413.2315 51.6539 63.8407 238.2255 303.2823 242.038 549.2461;
	13.0763 8.9249 11.118 7.403 8.904 366.0896 45.7612 48.9919 202.1985 191.9523 164.4111 347.6267;
	0.9933 0.8107 0.6503 2.1332 3.4709 65.4247 8.1781 10.2725 39.7134 66.605 39.9343 120.622;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
