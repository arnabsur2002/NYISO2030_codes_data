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
	0.5011 0.4351 0.3878 0.0 0.0 0.1765 0.0221 0.1823 0.0956 0.0 0.0 0.0;
	6.3212 6.5394 2.7992 3.3105 6.1059 58.1673 7.2709 15.6912 19.5447 46.7441 11.4455 84.6539;
	8.8818 9.9053 5.5281 5.571 9.7028 153.226 19.1532 41.6398 63.2748 73.2402 23.259 132.6384;
	12.6462 13.2984 8.6758 7.5133 11.1542 212.6611 26.5826 54.9246 127.917 93.6397 26.2139 169.5821;
	12.0351 12.2739 10.8688 10.9117 14.1473 226.7453 28.3432 48.288 195.7592 138.8746 33.3127 251.5028;
	10.6191 13.025 11.3194 11.1473 13.1661 254.8243 31.853 44.2096 212.1239 244.8509 142.4028 443.4265;
	9.2647 12.3841 9.3724 11.2082 11.9814 235.1137 29.3892 36.2987 196.7499 270.3105 170.8924 489.5339;
	5.7528 6.5163 3.7741 8.7091 5.5473 174.3629 21.7954 21.7769 201.5496 130.7205 129.4716 236.7356;
	4.9459 6.1198 1.8667 5.7856 4.4441 118.7604 14.845 15.7487 195.204 65.0588 106.8348 117.8219;
	2.9884 4.0902 1.7201 2.8031 3.8828 83.8915 10.4864 14.0811 186.0482 32.6966 47.2496 59.2138;
	1.4522 1.7714 1.2636 1.824 2.0037 111.3669 13.9209 18.0904 168.6887 2.1798 4.1747 3.9477;
	0.3665 0.5651 0.4016 1.1554 1.2118 53.6278 6.7035 7.2954 44.1881 0.6042 2.2207 1.0942;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
