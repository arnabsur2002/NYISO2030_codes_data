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
	5.5052 4.5772 5.2921 0.1335 0.3613 19.2358 2.4045 10.8558 0.0 25.4128 27.4755 46.0227;
	7.8965 9.8717 9.5273 0.8492 2.0149 134.8147 16.8518 39.0591 10.8998 117.0855 140.063 212.0426;
	15.9584 16.5565 13.743 2.6108 3.6119 226.4113 28.3014 48.1508 33.8049 204.7678 176.1965 370.8357;
	25.6597 16.479 13.7624 3.7934 3.1449 223.2382 27.9048 48.8913 85.5955 248.4469 179.6134 449.9389;
	25.9281 16.5326 13.7859 4.7008 2.6157 255.7591 31.9699 48.7954 124.8628 320.3253 205.0846 580.1111;
	24.9973 16.3373 13.5496 5.3529 1.8738 264.8075 33.1009 47.7294 147.1837 330.4594 203.1067 598.464;
	20.871 13.321 12.2361 7.877 2.633 376.5471 47.0684 62.4528 205.3548 337.6612 245.3054 611.5065;
	17.2819 14.8142 12.8141 7.7736 4.3698 387.2504 48.4063 65.0472 202.3508 288.611 217.0237 522.6763;
	13.9961 11.4598 9.9973 5.6092 5.3953 369.1298 46.1412 67.3459 184.7593 104.879 169.1858 189.9365;
	9.0567 6.5746 5.7662 5.9532 11.5842 305.5937 38.1992 62.6325 141.4324 112.9332 131.4384 204.5227;
	0.9215 0.7333 0.5246 2.1471 4.4614 61.0163 7.627 10.7593 36.1978 67.3215 40.2123 121.9196;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
