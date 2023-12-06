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
	13.7314 9.1354 6.697 2.0214 2.0459 122.5638 15.3205 32.1531 73.1069 50.0771 21.3562 90.6899;
	25.2115 17.0346 14.175 4.0795 4.082 290.982 36.3727 37.9668 95.5811 116.3106 34.1251 210.6392;
	26.6905 17.2795 14.3039 6.9164 5.7303 334.3286 41.7911 44.1084 95.8241 182.1336 105.6961 329.8451;
	26.1538 16.5247 14.0535 6.6321 4.6795 271.7831 33.9729 51.0792 101.0127 210.4715 164.3631 381.1652;
	25.9616 16.5326 13.8321 7.2221 5.2949 285.6872 35.7109 52.6779 109.049 248.9642 194.8225 450.8757;
	25.964 16.5331 13.7863 6.5398 4.9829 264.8823 33.1103 52.7345 114.344 259.1782 209.3346 469.3734;
	25.9546 16.5561 13.7984 3.9797 7.0425 320.4588 40.0574 67.8285 198.5156 340.7845 249.7426 617.1627;
	23.4168 16.4371 13.7411 1.1728 4.9646 315.95 39.4937 69.8047 202.1833 332.8244 219.7751 602.7471;
	17.5783 15.0522 12.4607 0.657 3.2114 296.9186 37.1148 69.5803 195.8924 250.8953 167.529 454.373;
	5.173 6.7932 5.7661 0.2698 7.8694 287.6517 35.9565 58.477 172.0027 184.6655 82.4819 334.4303;
	0.9088 0.8028 0.572 1.5084 3.484 65.4425 8.1803 10.3621 38.1504 67.1727 39.6474 121.6502;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
