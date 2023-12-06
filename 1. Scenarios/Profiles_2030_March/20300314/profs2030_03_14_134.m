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
	0.103 0.1041 0.1148 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	9.3883 6.5777 6.1671 1.2563 1.8909 79.3859 9.9232 9.712 53.5044 2.1133 13.5849 3.8273;
	11.0928 7.7699 6.2962 5.8075 7.639 235.9616 29.4952 51.9364 153.1094 37.1993 33.8365 67.3681;
	14.1148 10.0169 8.3744 9.4599 9.9974 298.0206 37.2526 61.5452 185.2325 205.1114 113.3587 371.4581;
	21.9648 15.8074 13.2516 10.8287 8.6426 418.0042 52.2505 62.267 251.9631 349.9115 155.6134 633.6918;
	23.0396 16.0537 13.2545 11.1206 7.1602 360.7291 45.0911 42.822 206.5635 357.6002 184.8112 647.6161;
	21.7777 16.0625 13.2624 11.0314 6.9933 317.0811 39.6351 42.1134 169.6985 348.5593 175.9049 631.243;
	23.9235 16.5824 13.7384 5.3848 2.8541 392.5725 49.0716 67.2782 208.7951 264.4232 40.2523 478.872;
	20.8847 16.2265 13.293 5.4664 3.671 434.8431 54.3554 73.2426 233.797 213.6064 16.5848 386.8425;
	15.7383 13.9928 10.6766 4.1962 4.2315 441.0425 55.1303 74.2938 240.438 163.8925 22.9479 296.8103;
	6.8611 5.8992 4.9954 2.5988 4.6485 317.619 39.7024 42.208 124.5281 40.0551 16.7294 72.54;
	0.913 0.7551 0.5866 0.7573 2.2731 54.5963 6.8245 10.7147 32.8874 15.0064 9.8738 27.1767;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];