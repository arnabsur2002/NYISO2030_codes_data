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
	8.4623 6.767 5.8229 0.5805 1.1817 282.0928 35.2616 23.2048 80.3443 39.851 24.3021 72.1704;
	16.1324 10.0239 10.8419 0.9796 5.7189 343.6722 42.959 38.4705 82.6685 78.3945 63.0046 141.973;
	18.7773 10.9549 13.0177 2.606 8.6425 331.0515 41.3814 43.6304 79.7225 150.0693 105.1042 271.7763;
	17.6125 4.41 9.6872 4.9476 6.7216 235.3153 29.4144 26.7209 144.4868 203.0576 157.1964 367.7385;
	22.245 12.2869 13.0468 4.8083 5.3855 259.2347 32.4043 26.0317 172.0735 184.9902 180.5003 335.0184;
	25.964 16.4621 13.7863 3.8884 4.7666 275.0937 34.3867 36.0477 187.6451 157.2567 181.5825 284.7928;
	25.8343 16.5551 13.7855 6.4811 10.1187 391.9784 48.9973 64.4626 257.1866 338.5658 202.0314 613.1448;
	22.0824 16.3881 13.7008 8.1169 10.8786 388.4494 48.5562 65.9114 259.5719 336.3715 183.7614 609.1709;
	10.5179 12.6735 8.3516 7.4978 10.2703 354.5758 44.322 62.546 256.359 292.4055 146.5554 529.5481;
	1.6677 2.1166 1.134 9.5979 11.9544 258.63 32.3288 49.3399 223.4736 202.2737 133.5027 366.319;
	0.9134 0.7501 0.528 1.7338 3.9547 58.4515 7.3064 10.2305 38.4999 65.9049 41.1061 119.3542;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];