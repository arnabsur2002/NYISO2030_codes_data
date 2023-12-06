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
	0.0188 0.0212 0.0223 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.4342 0.5285 0.3222 0.5741 1.7258 79.7894 9.9737 21.1009 20.1488 15.192 10.0163 27.5128;
	0.2051 0.2922 0.2624 1.0333 1.985 27.1699 3.3962 5.6499 10.1759 168.1451 42.6552 304.5117;
	0.2389 0.1788 0.2744 1.2135 2.2242 20.9232 2.6154 3.5403 12.3129 242.9388 47.8588 439.9637;
	1.3347 0.6544 0.5273 2.2989 4.6532 58.9869 7.3734 7.7747 96.9822 197.7477 53.6209 358.1223;
	2.3776 1.3055 0.8562 4.4512 7.587 201.4154 25.1769 14.478 212.3644 138.2304 50.4849 250.3361;
	2.6542 1.9488 1.1187 7.0789 9.7753 338.8412 42.3551 20.2888 251.1196 128.0925 56.7523 231.9764;
	3.2282 2.8773 1.9091 10.6703 9.0576 340.0815 42.5102 49.703 204.4485 217.1773 116.8626 393.3094;
	1.8085 1.8919 1.2835 9.5871 6.2182 165.2175 20.6522 41.2235 96.2162 227.1422 117.5642 411.3559;
	0.9886 0.9122 0.6869 6.8763 3.9804 65.276 8.1595 33.5037 35.2046 205.4831 89.4649 372.1312;
	0.887 0.4394 0.4344 1.2534 0.5112 25.3719 3.1715 20.2783 5.3297 53.2886 22.8039 96.506;
	0.3028 0.248 0.1782 0.4753 0.5334 42.9176 5.3647 8.1575 24.6901 20.965 10.5918 37.9678;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];