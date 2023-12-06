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
	0.4731 0.4039 0.4225 0.0 0.0 0.0 0.0 0.2 0.0 0.0 0.0 0.0;
	15.9118 11.2675 8.4898 9.2695 5.9515 193.2153 24.1519 45.4717 131.4584 38.2745 8.1516 69.3153;
	17.5495 14.0737 11.0698 11.3757 7.7859 436.1966 54.5246 73.1385 268.8654 170.8615 42.7149 309.4312;
	20.0631 16.591 13.5248 11.8156 9.0201 453.177 56.6471 75.4743 277.5536 190.8416 81.4015 345.6154;
	22.1191 16.0035 13.2604 10.4587 11.5564 329.8403 41.23 60.6014 183.3673 99.2405 62.9487 179.7251;
	24.1382 16.3395 13.7223 10.1602 12.1017 283.9841 35.498 64.7755 167.9057 73.7269 62.5069 133.5199;
	22.2858 16.3526 13.7181 9.133 10.7245 215.975 26.9969 68.2068 154.2614 52.5746 58.2756 95.2129;
	4.569 8.9684 5.9744 5.169 8.6711 62.3682 7.796 52.0836 47.2997 84.0562 45.4001 152.2264;
	2.5042 6.8392 3.1835 3.3448 7.797 70.4638 8.808 36.6303 39.3125 101.8825 37.1637 184.5098;
	2.2561 6.0008 2.1904 2.4773 7.9922 58.7318 7.3415 18.8411 29.2986 144.6785 31.1075 262.0137;
	1.0546 2.2403 0.9917 1.331 4.7235 11.5113 1.4389 0.4362 10.1548 96.2032 9.633 174.2246;
	0.3545 0.3346 0.2871 0.6661 1.0473 3.7452 0.4682 1.0752 5.7794 17.8262 6.0648 32.2833;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];