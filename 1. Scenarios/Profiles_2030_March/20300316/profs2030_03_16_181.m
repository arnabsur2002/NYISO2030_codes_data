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
	1.0216 0.8418 0.7016 0.0 0.0 9.5841 1.198 4.1882 0.4191 0.0 0.0 0.0;
	8.794 9.3559 6.3616 2.211 1.3195 74.0205 9.2526 13.2888 15.6663 38.0229 0.0 68.8598;
	18.8526 16.4393 13.5847 3.2214 2.3303 142.6706 17.8338 16.3857 18.894 102.3095 10.6694 185.2831;
	23.4036 16.6663 13.9651 5.3268 2.3501 254.4964 31.812 14.176 30.2636 197.4868 32.9367 357.6499;
	21.4744 16.3521 13.8 2.8416 0.3636 316.1577 39.5197 13.3467 95.0824 135.0436 29.7239 244.5647;
	20.4474 16.4309 13.5856 4.5945 1.7635 311.6357 38.9545 15.2083 136.8283 92.3488 24.8761 167.2443;
	20.1345 16.3132 12.9118 4.9253 3.4693 331.4118 41.4265 22.055 159.4954 70.2713 16.2875 127.2618;
	14.542 13.7712 10.2435 1.1097 1.4502 363.0634 45.3829 44.5101 124.9751 26.4739 15.3413 47.9444;
	11.2215 8.7605 8.675 0.1887 0.8559 377.0526 47.1316 45.6366 109.1774 34.3795 15.154 62.2615;
	7.9332 6.839 6.5695 0.1139 0.3507 367.4348 45.9294 38.7343 99.4899 31.2024 9.3983 56.5077;
	5.8495 6.5102 5.7033 0.7862 0.7568 251.9466 31.4933 7.5614 103.8701 19.5837 3.9677 35.4661;
	1.6189 1.491 1.1438 1.0496 1.185 77.7152 9.7144 11.3052 41.2458 6.8605 0.7936 12.4245;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];