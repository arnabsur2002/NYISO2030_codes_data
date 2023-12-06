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
	0.1699 0.1891 0.2467 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	8.5995 6.2689 5.6425 1.55 1.6065 53.4062 6.6758 13.214 61.1597 21.3169 14.346 38.6051;
	19.6205 13.7757 11.6159 4.0239 3.2796 119.5472 14.9434 27.8277 66.3887 8.8275 0.0 15.9867;
	24.228 16.6083 13.8 6.6154 4.5391 141.242 17.6553 34.0609 92.4776 4.7122 13.6335 8.5338;
	26.0737 16.474 13.7624 7.1644 5.1962 104.7047 13.0881 13.4898 161.8729 140.4587 65.7473 254.3716;
	26.2352 16.5326 13.7859 7.2129 4.57 151.6092 18.9512 7.9238 179.4874 263.4806 74.2143 477.165;
	26.2621 16.5331 13.7894 6.6071 3.0377 182.4435 22.8054 6.3248 158.769 300.168 77.0468 543.6061;
	26.3695 16.6113 13.9789 8.2529 5.8125 299.2512 37.4064 19.7553 103.8347 341.4098 199.3756 618.2951;
	24.2803 16.3881 13.8469 8.16 7.2593 315.115 39.3894 26.2307 98.0864 332.5334 186.6502 602.2199;
	18.8667 12.3525 12.3086 6.5818 8.2503 307.9004 38.4876 31.3613 142.9391 214.4682 86.7516 388.4032;
	6.1371 1.8918 3.4778 7.2903 13.002 310.7657 38.8457 39.4433 190.9418 85.5823 7.6794 154.99;
	0.9093 0.7541 0.5133 1.9572 3.6122 77.8042 9.7255 11.3498 38.9663 59.7251 31.304 108.1625;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
