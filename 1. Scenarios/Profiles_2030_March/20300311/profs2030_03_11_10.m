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
	0.0 0.0122 0.0053 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	10.4318 6.5024 7.9779 8.6131 4.7844 200.4867 25.0608 37.5523 198.7452 69.4453 38.781 125.7658;
	20.66 13.9637 13.3186 10.6142 9.6796 389.5145 48.6893 71.2791 244.4715 19.9982 61.8338 36.2168;
	23.9 16.6029 13.8626 11.3382 11.7606 410.8737 51.3592 73.5909 209.0651 49.9981 154.9354 90.5468;
	26.7689 16.6137 13.8129 11.2894 9.8056 330.9465 41.3683 61.98 126.1827 61.7101 185.9484 111.7574;
	26.7884 16.6083 13.8 11.4504 9.8222 324.111 40.5139 56.4468 105.1882 87.7239 191.3548 158.8686;
	26.7288 16.6083 13.8 11.4717 9.557 335.1455 41.8932 53.8021 129.2568 93.1654 189.0674 168.7231;
	26.6184 16.6083 13.8 11.5014 10.9913 382.2593 47.7824 62.0517 135.9207 42.1714 169.4568 76.3726;
	24.1354 16.6083 13.8 11.3963 11.3642 391.7111 48.9639 66.7608 116.2864 39.523 155.7698 71.5764;
	21.1543 14.7667 10.9982 8.6467 10.8825 365.9019 45.7377 64.8317 93.5896 29.9157 133.3546 54.1775;
	12.8272 7.4797 5.6076 5.3722 7.3907 183.8425 22.9803 26.3136 62.9942 15.0497 61.6507 27.255;
	0.9487 0.7584 0.4379 1.3464 2.511 52.5755 6.5719 8.4734 27.5572 14.8002 18.6423 26.8032;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
