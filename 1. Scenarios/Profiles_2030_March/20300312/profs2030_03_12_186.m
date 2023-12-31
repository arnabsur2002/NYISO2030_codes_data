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
	0.1579 0.1621 0.2467 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.6007 7.9829 6.5931 10.5571 2.7239 91.1088 11.3886 8.3829 112.2053 62.5722 24.1239 113.3187;
	18.4557 15.8206 12.867 10.8381 8.0206 226.6352 28.3294 31.0565 166.7142 155.6241 106.691 281.8362;
	23.383 16.6114 13.8089 10.1625 9.6437 299.0881 37.386 44.3619 186.1595 228.9019 140.4056 414.5426;
	25.7184 16.474 13.7624 6.1284 6.8863 237.3439 29.668 35.8442 212.4267 278.8888 147.8202 505.0692;
	25.9606 16.5326 13.7859 5.6062 5.2504 239.1002 29.8875 33.2148 228.7351 300.5685 168.9023 544.3314;
	25.9691 16.5331 13.7863 5.836 4.2513 207.4341 25.9293 33.3408 221.0259 278.4145 182.1989 504.2103;
	25.8343 16.5546 13.172 9.6903 9.4737 276.3769 34.5471 54.0001 222.938 341.3877 236.8464 618.2551;
	23.0125 16.3881 12.789 9.3753 10.6397 287.9048 35.9881 54.4974 205.5121 332.5579 206.4078 602.2643;
	17.8435 13.8771 8.5615 7.9451 11.2347 283.8616 35.4827 48.1784 188.4094 233.8929 141.8212 423.5815;
	9.8984 8.8369 5.7873 7.4862 13.836 302.215 37.7769 36.2386 165.2249 122.4951 92.363 221.8395;
	1.3215 1.2808 0.7333 2.1357 4.6587 70.2416 8.7802 11.3498 36.7014 64.516 39.7412 116.8389;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
