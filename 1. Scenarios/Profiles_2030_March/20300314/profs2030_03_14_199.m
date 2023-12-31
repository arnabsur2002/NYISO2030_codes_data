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
	1.5398 0.5226 0.7816 1.836 3.4206 169.3807 21.1726 6.8016 41.0515 45.2769 17.7961 81.9968;
	2.9291 1.7194 2.6848 5.3953 9.2359 133.532 16.6915 6.5646 51.5243 68.3971 74.4996 123.8676;
	7.4759 5.3276 5.6805 8.7877 11.8321 168.2707 21.0338 14.1751 78.7025 134.9185 141.8 244.3383;
	24.174 16.0021 13.5536 10.6078 12.8262 447.3756 55.9219 68.2189 262.6962 258.5201 166.3192 468.1815;
	26.7537 16.4838 13.7286 10.8493 13.0167 430.2064 53.7758 68.89 260.2843 296.833 184.3564 537.5663;
	26.4998 16.8266 13.7575 10.0586 12.3019 389.6589 48.7074 64.652 250.1901 307.2447 184.4359 556.422;
	24.5801 16.8182 13.7384 3.1286 5.9046 363.0041 45.3755 61.2698 235.5588 280.8022 166.3026 508.5345;
	20.4124 16.1534 12.9485 3.3498 5.319 377.8178 47.2272 61.0437 240.9556 261.3735 157.5449 473.349;
	13.9647 11.7203 8.629 3.2284 5.6577 376.1711 47.0214 59.2671 237.8799 227.5587 151.9652 412.1102;
	6.6292 5.1766 3.1786 2.4354 7.1095 177.9136 22.2392 22.7091 78.7327 53.0862 32.5926 96.1394;
	1.0116 0.8313 0.59 0.7419 2.2322 32.1117 4.014 6.419 20.5986 15.0404 9.6397 27.2383;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
