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
	0.0008 0.0 0.0 0.0003 0.0063 0.0 0.0 0.0 0.0 0.0027 0.0014 0.0036;
	7.1728 126.4191 80.9337 23.6157 38.7066 69.806 40.5223 3.0754 4.9926 188.9254 6.0161 4.7326;
	15.5509 327.5081 132.7802 43.1636 69.3845 180.8432 112.2735 6.7615 10.2629 345.3091 12.5676 9.9399;
	21.0643 503.5336 157.0892 47.8746 72.0173 278.0408 173.0332 9.3608 11.7205 382.9966 15.8745 13.1022;
	24.7918 432.4455 182.2481 41.8694 64.0638 238.7874 178.7252 10.5155 9.619 334.9549 15.8705 13.1212;
	24.7919 467.4393 184.4958 41.2269 62.5051 258.1103 202.6988 10.654 9.7157 329.8155 15.8691 13.1249;
	24.8059 475.9177 184.4304 41.0836 62.4198 262.7919 205.8164 10.6765 9.6604 328.6686 15.8556 13.1272;
	24.8164 324.0762 180.2619 47.4226 68.5487 178.9481 164.0602 10.9167 10.6468 379.3805 15.8953 13.1437;
	21.2909 298.0881 172.9355 48.9371 70.6265 164.5981 132.4297 10.8765 10.9456 391.4967 15.9015 13.1468;
	16.0499 229.7807 157.9415 47.8841 69.1455 126.8801 112.5878 8.371 10.404 383.0728 12.9152 10.0572;
	8.1713 137.7971 96.6203 29.3521 43.3742 76.0887 60.4117 5.1334 6.8945 234.8171 6.623 4.932;
	0.8185 42.4693 23.6927 6.3916 9.6953 23.4507 20.085 1.4581 2.8526 51.1326 0.7061 0.4552;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
