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
	0.0951 0.0972 0.1051 0.0 0.0 0.1251 0.0156 0.1784 0.0 0.0 0.0 0.0;
	3.5515 3.2404 2.4903 1.0526 0.7238 16.9321 2.1165 4.2578 2.4012 30.1948 26.1931 54.683;
	11.5241 12.0171 8.119 3.4846 1.0207 30.4608 3.8076 24.882 14.0521 101.9081 53.9029 184.5561;
	15.6311 15.3585 9.8795 6.2672 2.4986 47.2746 5.9093 35.5272 28.674 200.6659 94.3882 363.4072;
	21.0045 16.0695 13.0613 8.1142 4.3586 264.4164 33.0521 63.2064 189.4373 245.3559 106.7537 444.3409;
	22.745 16.0537 13.0326 10.3762 5.4426 257.5328 32.1916 61.6382 126.3234 289.6324 149.5382 524.526;
	23.5443 16.0766 13.2402 10.7831 6.1588 273.3019 34.1627 62.0605 104.6542 314.4073 169.869 569.3934;
	24.5673 16.8424 13.8933 3.9727 2.8372 300.0238 37.503 62.9023 108.0629 328.6632 178.7809 595.2111;
	21.2989 16.641 14.0742 3.0664 3.6179 335.2272 41.9034 64.0642 181.1269 282.4863 162.2938 511.5845;
	14.7987 14.3758 12.2025 1.8383 4.2971 330.0671 41.2584 61.5938 205.1437 194.1368 146.9788 351.583;
	5.3006 5.9256 4.2677 1.2901 4.273 145.0835 18.1354 34.5865 94.773 37.5559 35.8267 68.0139;
	1.1709 0.93 0.5949 1.0278 1.9641 59.1041 7.388 12.1709 33.8296 15.3773 10.085 27.8484;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];