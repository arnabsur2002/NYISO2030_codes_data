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
	0.1575 0.1621 0.24 0.0 0.0 0.0011 0.0001 0.0 0.0 0.0 0.0 0.0;
	6.0075 5.4317 5.0359 7.4331 8.1073 294.8673 36.8584 45.58 66.3902 236.3485 28.4367 428.0285;
	12.1215 9.2937 4.1263 3.8541 6.3223 307.4523 38.4315 55.8029 139.7724 181.472 115.9129 328.6468;
	20.8453 15.005 8.7337 4.6725 6.1747 324.1264 40.5158 53.3641 170.8244 194.9362 135.9191 353.0306;
	25.8582 16.4218 11.4857 6.1353 6.9353 282.6249 35.3281 50.6877 159.3097 229.9289 169.4215 416.4026;
	25.9535 15.944 11.2653 7.3973 8.8526 288.8763 36.1095 55.4176 160.1494 262.5092 197.6394 475.4057;
	23.9561 14.6332 11.2426 8.2887 8.4825 257.5106 32.1888 58.1695 150.2521 265.9085 200.831 481.5619;
	25.3976 16.41 13.7301 10.9611 10.2197 317.8322 39.729 67.3464 191.5531 341.4098 244.3742 618.2951;
	23.0422 16.3881 13.7008 10.6653 9.1822 327.3546 40.9193 65.2307 187.9484 333.2133 215.2817 603.4513;
	20.6606 15.5781 12.2049 8.7941 8.124 334.3243 41.7905 61.1575 184.5244 253.8732 160.2874 459.766;
	12.3346 9.1793 6.1232 6.542 10.9015 343.809 42.9761 51.4397 181.3442 143.4819 104.8408 259.8467;
	0.8962 0.7396 0.5203 1.5435 3.4709 67.5005 8.4376 12.1078 43.8297 61.4523 38.073 111.2906;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
