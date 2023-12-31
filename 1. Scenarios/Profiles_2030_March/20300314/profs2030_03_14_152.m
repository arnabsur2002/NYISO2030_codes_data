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
	0.124 0.1511 0.1304 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.4177 5.484 3.0355 1.7695 5.2092 100.2403 12.53 23.5217 24.9714 33.5084 23.8054 60.684;
	7.1317 9.9484 4.9621 6.5113 9.7075 141.4068 17.6758 23.9792 51.7012 61.1511 28.8192 110.7449;
	10.7758 12.8798 5.7923 9.7608 10.7268 140.5622 17.5703 14.7957 80.7489 158.2684 35.4344 286.625;
	21.6611 16.9592 13.3763 11.06 10.3103 312.4536 39.0567 26.979 240.9218 294.9225 92.9303 534.1064;
	23.6094 16.5965 13.2949 11.1743 11.0163 276.414 34.5518 18.9487 221.5027 343.7434 172.9194 622.5214;
	24.365 16.6289 13.3732 11.2056 11.3782 304.6251 38.0781 22.0853 210.9205 344.0105 208.2134 623.005;
	27.013 17.3891 14.2685 6.0174 7.0568 374.711 46.8389 54.7483 230.7675 244.5461 185.0362 442.8744;
	25.6979 17.3086 14.3588 4.8465 5.6888 381.4819 47.6852 61.2681 244.3586 182.3464 144.1974 330.2304;
	21.4752 17.1181 13.5034 2.7044 3.8609 346.5902 43.3238 59.0546 234.9391 109.6608 106.2744 198.5964;
	6.791 6.4864 5.1904 0.9442 2.0608 75.4528 9.4316 11.6708 50.6689 32.587 21.6297 59.0153;
	1.0287 0.806 0.5866 0.6793 1.3684 34.9622 4.3703 6.316 20.2353 13.3966 9.3672 24.2613;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
