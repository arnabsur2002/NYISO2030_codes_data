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
	7.2227 3.3625 3.5228 5.4844 5.7311 134.2462 16.7808 14.1362 135.3744 67.3635 38.6366 121.9958;
	17.5743 12.9619 12.1649 9.4092 11.2483 375.1163 46.8895 59.6148 150.858 66.1249 0.0 119.7527;
	23.2416 16.6029 13.8396 11.0583 12.3964 415.478 51.9347 66.2593 151.6845 197.4623 18.2204 357.6054;
	26.334 16.6083 13.8 11.2995 10.8524 387.8168 48.4771 57.6773 188.5483 257.0873 167.0311 465.5867;
	26.0621 16.6083 13.6041 11.4458 11.0334 354.2382 44.2798 46.6579 188.0283 297.3116 217.9115 538.4331;
	26.2288 16.6083 13.6008 11.4145 11.1421 317.765 39.7206 37.2163 181.6391 312.9079 224.2745 566.678;
	26.5361 16.7054 13.8307 11.6671 12.7135 377.249 47.1561 60.5428 190.0512 222.1067 177.1594 402.2365;
	24.5994 16.901 13.9911 11.8239 12.8673 410.2166 51.2771 72.3703 196.0898 198.4675 148.9122 359.4259;
	21.232 16.6309 13.2115 11.7218 12.0569 416.6033 52.0754 73.4494 214.299 164.7835 118.0041 298.424;
	9.1436 7.5425 4.3429 10.6312 7.0981 369.7704 46.2213 64.9497 212.2855 144.0797 80.0866 260.9293;
	0.7314 0.6047 0.3757 1.7947 2.454 56.4871 7.0609 9.458 25.1276 38.2802 19.1847 69.3257;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
