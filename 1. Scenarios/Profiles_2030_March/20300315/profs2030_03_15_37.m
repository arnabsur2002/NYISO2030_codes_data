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
	0.42 0.3551 0.3103 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	4.1093 3.8393 1.8709 1.4104 2.7603 76.662 9.5827 17.2702 36.7482 2.4539 5.5263 4.444;
	8.2474 6.4961 3.3299 1.5293 5.8839 202.971 25.3714 17.552 98.932 71.7038 30.6315 129.8561;
	9.0008 6.3925 2.9672 2.2336 7.835 236.3228 29.5404 17.644 142.6019 214.8889 108.0004 389.165;
	2.7778 2.6485 2.1064 10.1784 13.1223 172.7636 21.5955 16.8247 160.2021 268.3624 148.3585 486.0059;
	4.051 4.2557 3.317 10.8478 13.042 136.9263 17.1158 20.7193 139.2494 276.4786 174.076 500.7044;
	10.2078 9.3115 6.7868 9.6615 12.5018 158.9837 19.873 25.3732 120.1797 286.1456 178.0583 518.2113;
	12.2209 9.4226 8.5994 5.1886 7.3095 371.5094 46.4387 39.2623 210.7022 253.3617 130.2226 458.8396;
	8.8999 7.0809 6.6332 5.5194 5.7085 390.1828 48.7728 35.4296 221.0937 228.9181 111.2217 414.5721;
	3.3584 3.3051 3.261 5.1606 4.6422 336.2777 42.0347 27.3284 203.5879 160.9756 73.6425 291.5278;
	0.0 0.1633 0.234 4.6215 3.131 171.7799 21.4725 15.556 113.5523 16.8493 8.2789 30.5142;
	0.2069 0.191 0.1872 1.1697 1.4803 51.9602 6.495 3.7358 40.9412 6.882 4.3534 12.4633;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
