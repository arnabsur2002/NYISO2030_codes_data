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
	0.4174 0.3564 0.3039 0.0 0.0 0.2265 0.0283 0.8098 0.5208 0.0 0.0 0.0;
	2.6562 2.044 1.1348 1.4006 1.6101 95.6709 11.9589 35.0033 67.8371 41.1403 36.6966 74.5054;
	6.6103 3.135 1.7256 3.0649 3.699 181.7538 22.7192 40.1394 139.0873 175.8627 129.076 318.4884;
	11.3417 4.7979 3.3363 5.5485 5.0865 200.4945 25.0618 37.6783 154.6059 283.5795 142.7029 513.5641;
	16.0718 11.6258 11.6171 11.4199 12.9545 89.5639 11.1955 21.5587 91.7588 272.4453 51.7654 493.4;
	17.8948 14.8147 13.5397 11.5349 12.6098 102.237 12.7796 29.7666 99.1801 268.5057 40.0538 486.2654;
	17.7659 15.0722 13.4562 11.6303 12.3768 120.1523 15.019 38.2931 132.2058 246.1394 60.656 445.76;
	14.8923 9.3256 9.273 11.5722 10.8868 138.5838 17.323 39.3321 234.8919 92.2503 92.5919 167.0658;
	11.6352 6.9796 6.7578 11.1038 10.9797 92.3783 11.5473 23.359 236.0003 82.1141 93.4409 148.709;
	8.4855 4.1244 4.7694 8.6715 10.2721 54.1326 6.7666 11.6223 215.8239 47.9868 34.4145 86.9043;
	2.0471 1.199 1.3141 3.9455 4.8495 58.786 7.3482 6.2991 185.3632 12.7305 0.0 23.0551;
	0.3005 0.2311 0.2332 1.1913 1.5073 57.9223 7.2403 4.5629 58.5331 5.6896 3.6273 10.304;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
