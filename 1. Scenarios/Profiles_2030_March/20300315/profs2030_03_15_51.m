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
	0.4095 0.3608 0.307 0.0 0.0 1.1685 0.1461 0.8098 0.0956 0.0 0.0 0.0;
	16.1317 15.0159 10.4405 1.1659 0.9947 230.5913 28.8239 26.6525 184.7298 14.19 29.0592 25.6982;
	10.2578 7.9828 5.9827 2.5265 0.7558 143.7146 17.9643 16.9577 115.8319 33.8612 70.754 61.3228;
	10.6869 9.0071 5.2597 4.3926 1.3459 124.3878 15.5485 15.7604 75.5406 79.8362 116.27 144.5839;
	11.134 10.1285 7.2594 10.1877 12.0933 275.6633 34.4579 18.6305 89.5801 152.8582 137.2601 276.8272;
	17.8007 15.6822 12.1112 11.0644 11.7527 376.5539 47.0692 23.0664 155.1376 132.4181 136.9356 239.81;
	20.7059 16.6488 13.6692 11.2082 11.8188 401.8643 50.233 20.6811 183.6125 113.9793 103.2235 206.4173;
	14.1746 16.2639 12.866 11.1267 10.3195 412.9143 51.6143 24.4704 230.4177 88.6193 99.8122 160.4901;
	9.1561 12.2745 9.9131 10.6513 9.765 395.5408 49.4426 21.8656 216.4263 86.3102 109.3328 156.3083;
	7.3848 8.2444 6.2198 8.5851 8.5672 398.5288 49.8161 24.108 199.1321 47.3429 74.7553 85.7382;
	2.8516 2.0636 1.9258 4.4043 2.4261 428.9901 53.6238 42.6205 178.4302 5.3859 1.4722 9.7539;
	0.6492 0.5644 0.4234 1.3585 1.2781 78.7614 9.8452 8.8661 45.833 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
