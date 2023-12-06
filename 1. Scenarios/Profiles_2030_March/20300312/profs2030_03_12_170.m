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
	5.8423 6.8085 5.3535 6.4172 2.8893 133.1875 16.6484 25.4953 79.1553 52.2225 27.1252 94.5753;
	12.0668 13.6742 11.6073 10.7954 4.0014 277.8231 34.7279 54.4551 128.1683 64.4257 49.3933 116.6754;
	19.5333 16.6083 13.8 11.5192 4.5449 316.9062 39.6133 62.289 142.5069 129.114 101.9215 233.8262;
	24.9698 16.474 13.8123 10.6322 3.9043 242.5372 30.3171 56.6411 133.1484 273.3223 219.7194 494.9884;
	25.8704 16.5336 13.8938 9.6593 4.8074 232.0368 29.0046 57.5301 159.749 328.8805 255.1195 595.6046;
	25.7032 16.5331 13.8412 7.5479 4.4144 210.6902 26.3363 54.9908 172.4252 333.9096 252.7387 604.7122;
	20.8841 16.5546 13.7855 7.2429 6.2182 343.7802 42.9725 63.1468 234.1049 344.4332 253.4948 623.7707;
	14.5372 16.3881 13.6862 6.0914 5.6045 353.1843 44.148 62.7887 223.1855 338.8865 224.5503 613.7255;
	11.1704 14.262 10.8439 4.7863 6.2089 332.0254 41.5032 62.3251 207.6669 316.47 195.9033 573.1291;
	9.2999 12.9461 6.3625 6.1448 12.207 276.0749 34.5094 69.1168 186.3667 238.0014 177.9592 431.022;
	1.1543 1.2584 0.7698 1.646 4.133 59.3885 7.4236 15.5168 43.8075 66.091 39.5058 119.6911;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];