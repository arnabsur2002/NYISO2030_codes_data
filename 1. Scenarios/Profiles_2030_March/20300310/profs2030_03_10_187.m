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
	0.0 0.0 0.0098 1.009 0.0 44.7372 5.5921 3.4579 13.3057 15.9557 6.0651 28.8959;
	0.077 0.2271 0.3775 2.9531 0.7537 17.9523 2.244 7.0575 12.6133 32.4495 10.4359 58.7663;
	0.107 0.2973 0.4523 5.7042 3.1619 18.18 2.2725 5.9734 14.5092 47.8994 14.9559 86.7461;
	0.0 0.0089 0.0332 9.585 7.6594 39.4599 4.9325 4.5024 54.3052 58.9928 34.4863 106.8363;
	0.0724 0.0561 0.2788 9.6815 7.0697 75.8857 9.4857 4.7772 93.6673 137.7316 83.3508 249.4328;
	0.338 0.392 0.7618 8.4321 5.1848 87.9445 10.9931 4.5153 108.0165 208.1721 101.7201 377.001;
	0.7186 1.2162 1.2265 4.3335 1.4745 88.4533 11.0567 9.8799 85.6105 128.7518 40.1796 233.1703;
	0.5285 1.2437 1.0082 3.1672 1.5008 39.8264 4.9783 9.0065 49.0746 76.1048 14.2339 137.8262;
	0.1797 0.8993 0.5383 2.2502 2.8722 26.9079 3.3635 7.7264 26.3731 54.0831 5.5482 97.9448;
	0.5385 0.8456 0.5116 1.1262 6.202 18.4902 2.3113 5.3471 13.7284 99.2362 13.2221 179.7173;
	0.2861 0.3041 0.2165 0.4577 1.6608 32.1126 4.0141 7.7676 25.7826 50.1901 12.7882 90.8946;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
