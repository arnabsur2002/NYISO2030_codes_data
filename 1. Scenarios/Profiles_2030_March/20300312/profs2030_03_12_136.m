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
	0.168 0.199 0.2467 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	9.1295 8.0926 5.5409 7.5165 4.4574 105.4765 13.1846 2.025 12.8173 40.9812 23.0142 74.2172;
	19.1602 15.9614 11.9968 7.9763 4.0418 138.4411 17.3051 4.8827 17.2482 78.8484 72.762 142.7949;
	23.8708 16.8483 13.8205 8.8766 4.5979 137.6278 17.2035 14.5244 21.866 133.1358 111.5967 241.1098;
	26.19 17.1673 13.887 9.3342 5.0542 92.1279 11.516 17.2136 26.4213 124.6787 109.3946 225.7939;
	26.4082 17.0873 13.867 10.4195 6.1263 225.231 28.1539 27.4995 53.1434 235.0176 169.182 425.6183;
	26.271 16.8928 13.7863 10.7831 6.17 267.4687 33.4336 37.2612 89.998 261.4807 186.6312 473.5432;
	25.8487 16.753 13.7855 10.7948 9.698 297.7895 37.2237 50.5917 166.3654 336.3506 227.8121 609.133;
	22.8382 16.5176 13.6704 9.5836 9.1765 216.1165 27.0146 45.4177 152.0209 279.6185 176.8488 506.3908;
	16.2925 15.5717 10.4815 7.2471 8.6519 118.156 14.7695 41.5861 139.8424 72.8245 66.7631 131.8856;
	5.1539 7.3589 5.1858 6.4742 12.2216 211.0357 26.3795 46.1087 163.0262 17.769 45.9472 32.1798;
	0.9093 0.8163 0.5848 1.6547 4.1417 72.3003 9.0375 14.3458 45.5264 62.6736 39.2791 113.5023;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
