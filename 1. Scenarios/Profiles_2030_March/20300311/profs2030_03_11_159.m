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
	0.0052 0.0031 0.002 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.0245 3.7729 5.572 1.0297 0.5097 57.3236 7.1655 35.6385 20.0563 70.4471 39.9729 127.5801;
	16.9678 9.5648 10.7298 2.8441 7.3925 74.0042 9.2505 57.2122 14.2736 321.7458 150.1974 582.6836;
	22.7733 16.1009 13.7469 6.8323 11.5461 92.39 11.5487 47.237 18.6476 344.2824 227.2139 623.4974;
	26.3178 15.8417 13.5933 11.2835 9.6682 124.6464 15.5808 31.3903 40.2745 335.9337 227.6911 608.378;
	26.334 16.1788 13.7401 11.4742 8.0983 104.5173 13.0647 18.0878 47.0475 306.8132 219.3268 555.6405;
	26.334 16.3486 13.7917 11.501 6.4876 85.2136 10.6517 22.418 66.7992 308.5088 220.8935 558.7112;
	26.2711 16.1846 13.6703 11.6926 9.2464 271.7681 33.971 68.3159 182.1684 313.6138 178.2027 567.9564;
	21.4099 15.6514 13.2892 11.6946 11.2349 335.5123 41.939 73.1751 187.1513 331.9884 159.2049 601.233;
	12.9315 7.9972 7.2476 10.9757 11.3068 352.263 44.0329 71.7188 168.5668 323.641 133.6903 586.1157;
	5.9918 2.4388 2.4473 8.5102 7.8073 121.2283 15.1535 25.8275 43.1437 203.8128 63.9263 369.1062;
	0.7577 0.6151 0.3923 1.3492 2.4537 44.3341 5.5418 8.4157 19.5882 24.3741 19.027 44.1417;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
