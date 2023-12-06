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
	0.1004 0.0972 0.1051 0.0 0.0 1.878 0.2348 0.3816 0.7235 0.0 0.0 0.0;
	0.8053 0.4034 0.0 1.1781 6.2982 128.8983 16.1123 15.5983 65.5863 15.7734 32.3145 28.5656;
	4.1398 2.0774 2.0215 6.226 10.77 149.0417 18.6302 29.0139 85.1024 19.4626 39.8257 35.2468;
	10.0587 5.3772 4.8847 9.8364 12.2608 169.1322 21.1415 36.3092 123.7551 52.7119 51.6343 95.4616;
	21.2577 14.1281 12.2232 11.3616 13.969 385.9249 48.2406 64.3629 281.9521 70.1582 85.9419 127.0569;
	23.4508 16.0537 13.1543 11.2251 14.6373 398.234 49.7793 67.0018 286.5813 82.4465 136.7311 149.3111;
	23.628 16.0751 13.1907 11.2248 14.5238 423.4488 52.9311 68.9696 285.3908 88.9798 152.0668 161.143;
	20.3232 12.5948 13.5397 7.4918 9.3263 431.3319 53.9165 63.7612 280.6004 62.2532 139.5782 112.7409;
	13.2575 6.0111 12.0859 7.2932 6.2964 408.6755 51.0844 62.4831 264.5656 41.3625 123.8216 74.9077;
	7.526 4.0536 9.0937 4.8125 4.4075 369.9599 46.245 58.8409 233.6723 44.0732 107.4724 79.8169;
	7.2511 5.4155 5.3665 2.5782 2.9372 126.1922 15.774 33.2005 33.4445 16.4281 30.8901 29.7514;
	1.8229 1.3444 1.0855 1.0285 1.6716 62.0494 7.7562 12.5057 21.6443 14.504 9.7856 26.2668;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
