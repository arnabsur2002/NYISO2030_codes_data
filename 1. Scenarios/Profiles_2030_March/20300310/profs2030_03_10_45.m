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
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.1032 1.9487 2.4862 0.5419 1.0154 0.0 0.0 1.8413 0.0 12.22 6.2769 22.1306;
	0.8537 0.9471 1.1036 1.0777 3.7928 0.0 0.0 4.9312 9.3938 29.1025 12.7604 52.7048;
	0.9788 0.9274 1.1349 1.58 5.1416 7.1817 0.8977 7.3228 23.0326 46.1303 24.3807 83.5423;
	2.8034 2.6022 2.4953 1.9419 4.547 80.376 10.047 10.1991 102.7637 29.7719 45.9725 53.9171;
	4.9912 3.6063 4.1918 2.8302 5.7439 137.8719 17.234 15.6717 110.8609 29.7824 51.9133 53.9362;
	8.2829 3.546 5.2742 3.6774 5.8266 139.1181 17.3898 16.804 91.3094 25.0339 35.6478 45.3365;
	13.1496 4.5286 5.8857 3.5049 2.4841 105.2782 13.1598 16.876 40.5212 18.0294 0.0 32.6514;
	6.6201 3.1064 3.4448 2.1513 1.0796 50.4655 6.3082 9.5683 32.8736 11.1573 0.0 20.2059;
	3.7522 2.5553 2.5042 1.2077 0.4351 33.8081 4.226 6.8798 36.6414 4.3806 0.0 7.9333;
	2.6121 2.2464 2.2124 0.5303 0.0 31.7671 3.9709 8.5376 46.638 0.0 9.3975 0.0;
	0.4648 0.2894 0.2004 0.4778 0.7291 35.6998 4.4625 10.0225 26.8509 5.3556 8.5789 9.6991;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
