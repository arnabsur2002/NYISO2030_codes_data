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
	1.0111 0.8228 0.7011 0.0 0.0 11.4669 1.4334 4.4339 0.5885 0.0 0.0 0.0;
	5.9734 5.0074 5.6378 3.2322 3.4285 182.8692 22.8587 28.8147 41.0208 70.9612 39.1209 128.5111;
	11.6826 8.7575 10.9378 5.8456 4.1213 242.2613 30.2827 40.1679 66.0175 103.3275 70.1262 187.1267;
	18.0261 13.5531 13.7746 7.4447 4.2463 269.7254 33.7157 43.0064 91.9636 143.9272 96.2811 260.653;
	22.333 15.3805 13.8 3.334 4.0914 144.2506 18.0313 37.8954 50.2588 191.0048 124.9816 345.9108;
	22.9995 16.049 13.8 3.9015 5.252 128.2466 16.0308 34.7289 23.3667 217.0993 128.4236 393.1681;
	24.6877 16.5214 13.8 4.4134 5.6399 144.5007 18.0626 41.1165 15.2773 233.2273 134.9212 422.3761;
	24.1492 16.4751 13.5572 2.982 4.6226 200.5908 25.0739 63.1254 10.7882 206.435 122.5276 373.855;
	21.6381 16.9188 13.5862 1.5731 4.0563 208.7319 26.0915 64.2797 23.5514 213.4483 120.53 386.5561;
	15.9625 15.8519 10.9867 0.6398 3.4943 182.799 22.8499 59.372 39.4571 176.7885 92.979 320.1651;
	6.5857 6.6206 3.3954 0.3019 3.6732 104.4571 13.0571 18.0678 98.4171 60.041 37.4894 108.7346;
	1.259 1.0174 0.7849 0.8079 1.0865 64.5152 8.0644 11.3079 39.018 13.0104 6.3441 23.562;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];