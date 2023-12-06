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
	0.4095 0.3481 0.302 0.0 0.0 0.2359 0.0295 0.1431 0.1574 0.0 0.0 0.0;
	0.3501 1.3865 0.4933 1.3289 0.6598 27.1477 3.3935 4.3785 21.1421 3.226 3.8764 5.8423;
	2.575 2.9718 1.1386 1.0579 1.2905 67.4167 8.4271 8.0393 29.7734 32.7858 27.2957 59.3752;
	5.8825 3.0175 1.6994 1.0435 1.9732 80.7146 10.0893 10.9137 25.7744 131.6122 89.0831 238.3505;
	7.8542 3.4457 2.4942 5.0461 12.0392 23.3807 2.9226 9.2022 4.0543 251.4526 116.23 455.3821;
	12.5569 7.9733 7.024 7.5958 10.4541 35.8246 4.4781 10.5493 8.4049 168.191 103.71 304.595;
	15.8698 11.7228 10.31 10.0176 10.0682 31.4978 3.9372 10.314 7.4832 91.9521 88.0822 166.5258;
	7.7127 7.8217 7.3651 10.0394 9.2151 22.5108 2.8138 9.6307 26.7998 113.1079 92.5916 204.839;
	5.1212 5.9328 3.7706 8.3074 9.8634 12.4618 1.5577 8.9181 22.1487 142.6243 105.007 258.2934;
	1.6841 2.0235 1.235 6.0646 10.4269 20.0206 2.5026 8.055 22.0082 99.5505 57.9075 180.2866;
	0.0 0.059 0.0 3.3171 7.6778 117.9942 14.7493 10.0163 70.0406 0.8161 0.4847 1.4779;
	0.2069 0.1875 0.1816 1.5499 2.3984 80.8862 10.1108 5.1407 51.3525 0.0 2.0794 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
