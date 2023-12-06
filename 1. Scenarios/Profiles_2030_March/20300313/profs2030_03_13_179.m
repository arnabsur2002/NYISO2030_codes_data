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
	0.4731 0.4018 0.4257 0.0 0.0 0.0 0.0 0.5386 0.0 0.0 0.0 0.0;
	3.0675 4.3813 4.0638 1.1374 3.3036 136.6839 17.0855 45.5116 137.284 17.3432 11.803 31.4086;
	6.3171 11.5937 9.601 5.6631 7.6861 423.6724 52.9591 70.884 256.8927 39.2005 36.5739 70.9924;
	9.8014 16.2029 13.3272 9.0132 8.9133 445.4532 55.6817 74.056 271.0883 53.6741 36.6843 97.2041;
	2.8438 8.9335 7.5553 6.347 5.2465 372.7172 46.5896 62.577 256.184 25.5861 15.2613 46.3365;
	4.2673 8.4255 6.6452 7.6299 6.2945 369.7318 46.2165 61.3307 250.2022 35.5267 13.4382 64.339;
	10.4215 10.0042 9.4987 8.8074 7.7095 373.1381 46.6423 59.9313 228.5611 50.517 22.9638 91.4866;
	7.4943 6.4967 7.9402 6.8368 9.3463 279.333 34.9166 33.0764 142.7251 62.1305 52.5901 112.5188;
	6.9708 4.6153 6.7939 4.3879 7.8394 276.2843 34.5355 28.4648 151.4548 52.5289 52.6481 95.1301;
	3.9879 3.1823 4.448 1.6716 5.1298 215.0751 26.8844 23.1123 155.8458 37.2422 36.0748 67.4458;
	0.7054 0.4728 0.9446 0.1681 0.2993 42.0309 5.2539 6.2875 64.1797 13.7174 6.1166 24.8423;
	0.3729 0.3243 0.3471 0.4192 0.3357 6.7199 0.84 1.8247 3.7043 8.1707 3.6694 14.7972;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];