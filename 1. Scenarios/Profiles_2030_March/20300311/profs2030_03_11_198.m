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
	7.2629 6.7191 5.4832 1.7835 8.7781 53.7522 6.719 7.6292 28.9154 70.3326 40.2235 127.3727;
	11.5611 12.5234 10.0573 6.9058 11.8796 328.9768 41.1221 65.2194 152.7136 259.9441 172.3801 470.7603;
	19.3505 16.6029 13.7951 10.3022 12.3059 402.3981 50.2998 72.8789 218.1924 332.8163 225.9465 602.7324;
	26.3852 16.7687 13.8517 11.2835 9.7673 407.6561 50.957 68.4884 244.3025 302.7369 201.309 548.2584;
	26.7652 16.9237 14.1132 11.373 9.8996 393.4742 49.1843 66.4274 220.2161 295.8091 215.9139 535.7121;
	26.7688 16.8653 14.2191 11.2204 10.3764 380.0271 47.5034 66.2175 198.6346 296.1468 221.61 536.3237;
	26.3391 16.6403 13.9654 11.5744 13.2835 405.5887 50.6986 73.4606 153.1174 253.8084 201.77 459.6486;
	23.2356 16.6098 13.804 11.5984 13.5138 417.782 52.2227 77.1904 151.2319 302.0704 192.081 547.0513;
	17.3454 15.3258 11.4197 10.1346 12.8637 403.4357 50.4295 76.7678 143.3768 305.1192 193.8457 552.5727;
	8.4736 7.5227 3.5393 7.7399 7.6261 214.5506 26.8188 53.2756 99.4079 293.6327 157.5884 531.7706;
	0.6991 0.588 0.3718 1.3074 2.4659 44.5936 5.5742 8.5407 24.5709 39.5828 31.589 71.6846;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
