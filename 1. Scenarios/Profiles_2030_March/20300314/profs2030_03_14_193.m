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
	0.0951 0.0972 0.1054 0.0 0.0 0.1251 0.0156 0.3208 0.1051 0.0 0.0 0.0;
	3.6686 2.5129 2.6144 0.732 1.6202 64.5581 8.0698 15.6028 31.2532 53.9663 34.1494 97.7333;
	9.9079 6.286 6.0462 2.1062 10.3428 61.9865 7.7483 38.5406 20.7198 148.5139 40.743 268.9596;
	13.6821 8.7764 8.1583 3.4852 12.0552 65.0129 8.1266 53.4021 26.318 222.614 42.353 403.1553;
	15.6551 11.4549 7.3211 6.1368 8.782 372.5546 46.5693 73.3855 211.8756 213.4552 48.0674 386.5686;
	21.2681 15.5897 10.0747 10.6006 5.3879 402.4026 50.3003 75.6847 227.4012 227.2922 104.9454 411.6275;
	23.6277 16.0751 12.0715 11.1641 5.5249 433.3063 54.1633 74.939 233.1837 233.5737 144.795 423.0033;
	24.1839 16.5881 13.6515 4.9725 4.6493 434.966 54.3708 67.9593 243.1478 248.4992 134.7082 450.0335;
	19.3951 15.8711 11.3108 2.7109 6.2197 408.1525 51.0191 64.1067 239.8567 246.728 106.4518 446.8259;
	8.1815 10.1217 5.6868 0.9611 6.9015 365.599 45.6999 57.289 223.0922 223.2667 91.8204 404.3374;
	3.2071 3.4226 1.7655 0.5458 6.5457 110.5168 13.8146 9.634 65.0347 54.1026 19.1977 97.9801;
	1.2545 0.9049 0.6319 0.7777 2.4939 49.2009 6.1501 6.604 26.2128 14.8922 7.5872 26.9698;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
