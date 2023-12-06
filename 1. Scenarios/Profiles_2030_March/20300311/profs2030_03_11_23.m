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
	8.4658 4.5658 4.1692 2.3872 3.5108 306.1595 38.2699 46.5449 139.5112 70.4766 40.6773 127.6335;
	16.9676 9.3368 5.7382 5.977 9.0974 438.537 54.8171 70.8015 259.4105 200.0885 142.3036 362.3614;
	21.3755 12.4912 9.5347 8.5278 10.8657 443.4426 55.4303 69.9755 250.1218 309.3053 210.37 560.1538;
	19.212 3.2335 4.2556 10.3856 6.097 278.4498 34.8062 40.1464 124.9161 245.4964 210.1285 444.5955;
	16.0363 2.2839 2.29 10.6058 5.2466 126.1798 15.7725 34.4789 49.5415 254.8238 222.175 461.4875;
	18.877 2.7594 5.5557 10.3648 4.8873 119.9716 14.9965 36.2181 40.7737 261.2075 227.0246 473.0483;
	26.2377 16.5777 13.7687 9.4296 6.164 341.6438 42.7055 49.0485 52.1977 189.0618 196.8174 342.3921;
	23.3794 16.6083 13.8 9.1883 6.6083 399.0607 49.8826 49.3565 62.5388 171.5601 166.9019 310.6964;
	18.0895 15.479 12.1788 5.2434 6.0852 394.3027 49.2878 55.432 74.7441 133.1916 144.683 241.2108;
	9.0767 6.9899 5.7026 3.8449 2.2254 241.1843 30.148 26.3693 43.1169 71.9405 114.9325 130.2846;
	0.8055 0.6243 0.4192 1.3479 2.5262 49.5058 6.1882 8.474 23.279 22.9442 33.346 41.552;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];