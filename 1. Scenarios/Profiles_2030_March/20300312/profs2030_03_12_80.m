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
	8.0582 6.2154 4.8329 1.661 1.8034 25.9392 3.2424 11.5862 5.8472 37.7472 23.4597 68.3605;
	9.2315 12.4501 5.7547 3.0095 5.4637 217.1015 27.1377 34.4693 61.1026 118.8639 159.2305 215.2632;
	11.2076 16.4584 10.4884 4.1878 6.9709 307.2423 38.4053 44.4899 126.4051 196.7551 221.3636 356.3246;
	21.5165 16.4686 12.782 2.9052 3.9708 235.6925 29.4616 32.3465 149.8722 238.3034 210.7599 431.5688;
	25.9531 16.5326 13.7533 2.1983 3.4268 210.2872 26.2859 23.5518 149.2186 310.3794 211.3775 562.0989;
	26.1981 16.5331 13.7863 1.8569 3.5896 220.1217 27.5152 30.6722 152.8023 339.5086 203.5162 614.8522;
	26.6464 16.7482 13.8998 4.6978 8.6532 390.5617 48.8202 63.5068 221.382 348.9044 245.6159 631.8679;
	25.0596 16.5492 13.797 5.7988 7.9432 409.2778 51.1597 64.303 228.0929 340.0692 218.0943 615.8673;
	20.4409 15.2851 12.5706 5.7402 5.9373 391.0329 48.8791 58.3558 214.02 296.3599 156.7978 536.7096;
	8.1594 6.9748 5.2107 7.1476 9.2668 301.795 37.7244 18.6528 172.9145 159.7119 31.1284 289.2392;
	0.9399 0.7991 0.5467 1.657 3.6087 64.9667 8.1208 9.8987 40.4694 65.4273 29.1094 118.4893;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
