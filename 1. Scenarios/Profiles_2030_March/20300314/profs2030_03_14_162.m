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
	0.0951 0.1034 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	5.7594 4.4381 3.7283 2.8599 4.0226 67.9769 8.4971 8.5304 44.191 64.8001 38.2172 117.3533;
	7.5652 5.962 5.1634 5.1926 8.4139 132.5994 16.5749 8.5654 53.0087 168.4925 125.7893 305.141;
	8.4823 6.5637 4.5826 7.9897 9.9059 162.4753 20.3094 12.6747 49.9798 241.4375 168.288 437.2448;
	17.8233 12.0025 7.0341 10.6444 9.866 383.2753 47.9094 63.781 148.3205 225.7977 166.9436 408.921;
	23.0063 15.9641 12.26 11.3117 11.2498 390.6482 48.831 69.5709 208.095 283.4273 198.085 513.2885;
	22.8491 15.9694 12.8344 11.5392 12.28 402.8947 50.3618 71.4142 235.5045 303.4744 201.8797 549.594;
	12.1148 7.7787 10.3505 6.6792 9.0284 393.3379 49.1672 65.8822 232.3186 250.6747 158.3564 453.9734;
	2.612 1.296 2.9693 3.8843 6.8979 383.1993 47.8999 63.3072 209.0438 209.3432 131.3067 379.1219;
	2.5976 1.0617 1.6311 1.734 4.6588 348.771 43.5964 57.9871 139.6285 113.3417 102.8972 205.2625;
	3.8975 1.4568 1.6696 1.7271 2.4518 118.1622 14.7703 16.8207 21.9663 12.6818 28.8857 22.9668;
	0.9767 0.7759 0.5949 1.2858 1.7321 55.782 6.9727 6.8921 27.1707 13.9856 10.3189 25.3281;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
