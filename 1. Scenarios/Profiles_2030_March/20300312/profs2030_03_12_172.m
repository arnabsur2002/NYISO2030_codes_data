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
	0.1578 0.1688 0.2483 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	7.4171 6.3404 4.516 1.4164 3.0293 104.7091 13.0886 21.8954 28.8367 24.1399 21.3989 43.7176;
	16.0526 9.5738 7.5856 3.1862 3.1927 213.5262 26.6908 32.0493 99.3645 142.6028 44.0297 258.2545;
	22.3363 15.2292 13.076 4.9995 4.7442 281.0624 35.1328 45.2898 144.5699 254.8991 113.7042 461.6238;
	25.2774 16.403 13.6925 3.4089 5.7446 295.0859 36.8857 62.5262 150.7675 260.0766 178.7422 471.0002;
	25.9535 16.5326 13.7859 3.8779 6.8805 332.399 41.5499 70.3634 158.4354 276.0958 196.7251 500.0111;
	26.0836 16.6561 13.7985 4.8996 5.6632 321.8779 40.2347 69.1593 157.1302 279.3329 195.0863 505.8736;
	25.8343 16.5546 13.7855 8.5156 4.329 381.4825 47.6853 65.7685 208.6285 341.4098 240.5281 618.2951;
	21.4541 16.2532 13.0294 8.0128 1.9682 384.979 48.1224 64.1978 213.525 336.3715 216.5021 609.1709;
	10.833 9.3194 6.0563 5.7882 2.5399 383.059 47.8824 65.2187 213.637 276.5768 170.9413 500.8822;
	2.7372 2.1708 2.5642 6.241 11.0295 408.2825 51.0353 70.2687 235.0577 199.4169 130.4553 361.1452;
	0.9635 0.7861 0.6304 2.2164 4.2818 79.8421 9.9803 15.3628 48.3378 72.936 39.6151 132.0876;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
