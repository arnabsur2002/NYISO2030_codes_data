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
	0.1575 0.1621 0.24 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	4.494 5.5682 3.3087 3.0705 4.9592 325.2971 40.6621 65.8259 283.6292 7.1884 24.0368 13.0182;
	17.6941 13.7856 11.6759 3.5551 6.1003 444.9617 55.6202 74.4067 284.9268 115.9144 162.1698 209.9217;
	23.8775 16.6083 13.8128 5.0838 6.3547 452.3825 56.5478 71.9948 295.3687 220.6445 198.3822 399.5884;
	26.023 16.5738 13.7627 4.4633 3.9304 444.6095 55.5762 67.7577 275.3874 271.2851 165.9136 491.299;
	26.1059 16.5577 13.7859 4.659 3.9174 446.2096 55.7762 67.9977 249.2895 264.2545 153.6339 478.5666;
	26.1317 16.5536 13.7863 4.7853 3.9311 436.8846 54.6106 65.6061 211.3195 260.6092 111.3917 471.9649;
	26.2829 16.7774 13.8225 8.2087 7.8967 402.8908 50.3613 66.8854 200.0362 341.4098 220.4385 618.2951;
	24.0962 16.649 13.7385 7.7878 6.6365 382.0015 47.7502 64.627 179.091 336.3715 216.3626 609.1709;
	18.4119 15.5102 11.894 4.8662 5.2826 349.6762 43.7095 62.5256 154.0771 292.3808 173.1196 529.5034;
	4.2157 5.0902 3.6279 2.826 9.5053 315.2029 39.4004 59.2847 134.6774 198.5126 115.9299 359.5076;
	0.8962 0.7333 0.5253 1.5084 3.6196 67.2733 8.4092 13.9697 35.0478 64.7435 37.1734 117.2508;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];