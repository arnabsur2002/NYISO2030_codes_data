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
	0.4243 0.0 0.296 0.0675 0.2665 0.0 0.0 0.0 0.0 0.5399 0.3636 0.3138;
	3.7397 112.9327 67.8427 10.3925 14.1085 62.3591 31.409 1.8663 2.0202 83.1399 3.1334 2.3184;
	6.9335 244.3814 110.0433 16.6498 20.2906 134.9423 82.4246 3.1897 3.2721 133.1982 5.8691 4.5016;
	10.6176 354.8783 128.8772 20.0144 24.9859 195.9565 114.8092 4.6597 4.1185 160.1154 8.6655 6.269;
	13.311 416.5273 130.5192 21.4145 23.1417 229.9977 120.2059 9.7102 12.072 171.3157 10.361 9.2906;
	14.8911 437.8641 138.3945 23.3431 26.1465 241.7795 144.3867 10.3908 11.4922 186.7446 11.9699 10.4522;
	14.9704 445.5247 138.4777 23.3346 26.275 246.0095 151.1124 10.4752 11.2946 186.6767 12.0239 10.4704;
	9.5665 352.5238 192.4403 28.3687 26.3783 194.6563 113.3538 10.104 8.8239 226.9498 7.7081 7.5396;
	7.5787 311.1529 191.5348 26.7031 22.2649 171.8122 107.6501 9.3729 8.6777 213.6248 6.3682 5.8415;
	5.2201 247.1366 177.257 23.5328 19.5467 136.4637 82.5442 7.42 8.0157 188.2622 4.3392 4.1777;
	1.781 49.1529 151.4282 23.1895 17.826 27.1412 9.9888 3.9608 4.3131 185.5162 1.4609 1.4349;
	0.4245 26.0696 48.0282 7.7838 5.8061 14.3951 4.7473 1.3534 1.6256 62.2701 0.3955 0.348;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
