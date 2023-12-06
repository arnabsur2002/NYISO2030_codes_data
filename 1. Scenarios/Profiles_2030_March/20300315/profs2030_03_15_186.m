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
	0.4095 0.3481 0.302 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	1.6565 0.7642 1.1102 2.9488 2.0959 14.4825 1.8103 1.3184 10.0201 70.6971 34.506 128.033;
	2.0683 3.4752 3.0831 3.257 2.846 77.3875 9.6734 5.3605 44.9888 116.4376 32.5525 210.8692;
	2.6788 6.8297 4.7504 5.0363 3.3122 114.3196 14.2899 9.2913 58.3061 127.1715 54.2565 230.3083;
	6.5472 11.029 8.6151 11.3472 12.5894 51.5673 6.4459 5.5491 43.1522 187.0655 147.9244 338.7768;
	6.8188 8.883 7.2351 11.2315 12.6113 51.0279 6.3785 8.2497 20.0962 280.9982 183.071 508.8894;
	7.2911 6.7889 5.7637 11.2082 12.7921 54.4922 6.8115 8.8758 13.5841 332.1353 188.9685 601.499;
	6.4388 4.7236 5.612 10.4443 10.524 104.5362 13.067 3.1668 154.0189 244.9816 135.1997 443.6631;
	7.9432 6.8119 5.8224 9.696 10.4619 114.3781 14.2973 0.2466 206.0319 181.3781 113.2643 328.4768;
	6.7441 5.8933 5.0085 7.9342 10.9567 97.9271 12.2409 0.0 216.4741 87.4293 79.9224 158.3351;
	2.3317 2.0367 1.6101 4.779 9.8421 110.1556 13.7694 4.6189 185.553 8.9358 4.6714 16.1829;
	0.3354 0.3778 0.2449 1.2823 2.5406 53.4905 6.6863 5.4828 46.1678 3.7136 1.2711 6.7254;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];