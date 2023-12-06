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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.791 3.9835 5.3263 7.3962 12.2719 212.8108 26.6013 41.9277 30.844 82.2719 41.4196 148.9948;
	13.1293 7.0701 7.876 6.8488 12.9076 288.4021 36.0503 62.3515 81.6515 253.7019 195.688 459.4557;
	21.3628 12.773 12.5172 7.5212 12.7274 303.7677 37.971 65.5057 145.1358 320.6537 236.7957 580.7059;
	26.334 16.1711 13.5183 9.9452 11.1919 229.3114 28.6639 63.5433 198.6703 291.2227 209.9623 527.4062;
	26.4232 16.6083 13.8 8.8548 10.7415 170.1205 21.2651 63.6508 157.0371 312.1409 222.6924 565.289;
	26.3999 16.6083 13.8 6.8816 9.4162 130.1836 16.273 62.1609 95.8382 301.2041 226.2161 545.4824;
	24.8385 16.2858 13.7919 10.3688 6.3995 303.7202 37.965 64.9519 140.5773 113.6787 174.441 205.8727;
	18.4862 15.329 13.686 11.2152 6.8823 376.2693 47.0337 68.9205 188.9082 73.1955 135.8523 132.5574;
	11.8802 9.8426 9.9827 9.1477 8.6902 395.3622 49.4203 69.5957 225.2795 73.5646 111.1036 133.226;
	7.7181 7.0869 5.4817 6.3157 9.1065 304.5026 38.0628 48.0111 216.3242 81.1342 80.9729 146.9346;
	0.7677 0.6819 0.4079 1.245 2.8312 45.1315 5.6414 8.922 21.7732 22.9435 36.4996 41.5509;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];