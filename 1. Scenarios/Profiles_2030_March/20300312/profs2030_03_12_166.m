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
	0.1575 0.1718 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.5962 5.8623 2.4611 3.9683 3.6941 107.0864 13.3858 14.6186 28.222 20.5408 22.7112 37.1996;
	12.3562 9.4545 10.0235 5.5411 2.123 150.5944 18.8243 21.283 45.9235 89.805 58.532 162.6373;
	19.1192 14.027 13.8 7.8459 1.7397 177.4915 22.1864 32.2005 65.2891 150.1439 68.1323 271.9114;
	21.8791 14.0029 13.4914 8.4506 2.3821 203.9477 25.4935 38.2042 106.5062 79.4036 3.6045 143.8004;
	25.5374 16.3035 13.5908 7.4328 4.1929 248.9046 31.1131 43.7057 109.0638 94.0465 10.0199 170.3187;
	26.0285 16.5331 13.7863 6.5035 5.1439 254.4705 31.8088 41.8076 89.0659 101.6279 12.7582 184.0488;
	26.9528 16.6351 13.7859 8.8011 8.2178 365.5775 45.6972 51.9587 112.7428 292.8337 69.9891 530.3235;
	26.2801 16.412 13.7008 8.4798 6.0973 367.7896 45.9737 53.1918 129.6483 300.115 84.8922 543.5101;
	22.7259 14.5902 11.5983 7.4976 4.3022 346.6578 43.3322 54.8942 135.5732 193.2026 36.8401 349.8911;
	9.572 7.3731 5.2818 9.296 8.4929 290.2599 36.2825 55.7921 127.4536 154.8637 16.6426 280.4591;
	1.2526 1.0784 0.7338 1.6717 3.4411 59.5006 7.4376 13.6032 34.9853 65.9751 38.0548 119.4812;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
