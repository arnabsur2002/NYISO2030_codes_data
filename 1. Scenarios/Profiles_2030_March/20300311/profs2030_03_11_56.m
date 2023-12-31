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
	0.0 0.0 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	1.396 0.2501 0.8562 2.7194 4.6439 240.9248 30.1156 66.7582 84.8714 85.3524 39.0978 154.5738;
	9.1968 6.8212 5.7913 7.2644 10.9308 416.4043 52.0505 79.1128 165.0565 329.5814 135.3942 596.8739;
	19.7989 16.5885 13.5907 10.0608 12.221 440.4272 55.0534 78.3976 179.3698 336.9246 213.9835 610.1725;
	21.382 16.4284 13.0781 8.5975 9.7683 324.2287 40.5286 66.12 180.9858 279.0155 200.0609 505.2988;
	7.9152 8.647 5.5259 7.4286 10.348 153.0211 19.1276 50.9868 159.1281 281.308 210.2196 509.4505;
	6.4751 2.4034 1.8871 8.333 10.7376 79.9833 9.9979 46.5871 149.0608 278.2459 207.2765 503.905;
	12.7974 3.5355 5.0779 9.6747 11.5082 22.9511 2.8689 69.227 146.1587 241.5184 181.6232 437.3912;
	12.8247 9.7051 10.9182 9.9117 11.446 69.3935 8.6742 74.2302 158.1096 290.6075 172.5045 526.2919;
	9.2556 7.9061 7.6699 5.1186 10.347 188.7682 23.596 74.8567 155.416 306.8634 169.2557 555.7315;
	1.8169 2.662 1.645 1.7155 5.8094 195.877 24.4846 66.7012 111.0329 302.836 104.0432 548.4378;
	0.6973 0.586 0.3718 1.2449 2.5105 52.8724 6.609 10.8151 26.9018 43.0731 23.2792 78.0056;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
