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
	2.3061 3.3525 3.482 5.8455 5.2775 269.0617 33.6327 67.4876 111.1256 70.5102 40.4769 127.6945;
	13.4726 12.8098 8.5196 10.924 10.6267 389.5977 48.6997 74.9438 168.372 186.6517 120.1202 338.0273;
	22.8125 16.6029 13.5461 11.5858 12.1412 396.9551 49.6194 75.3251 174.714 274.8683 190.7677 497.7881;
	26.3214 16.6083 13.6929 11.3938 10.0688 226.2942 28.2868 60.111 168.6803 139.3491 201.125 252.3621;
	25.8319 16.6083 13.7092 11.4818 9.8213 207.2429 25.9054 51.6597 154.6342 154.5256 218.198 279.8468;
	25.9852 16.6083 13.7452 11.5323 9.406 242.6789 30.3349 49.4163 163.5092 153.987 220.8637 278.8715;
	26.3784 16.6083 13.8 11.7941 10.8693 373.9829 46.7479 65.9875 201.1199 71.8543 155.5657 130.1285;
	24.1165 16.6092 13.8 11.7845 11.4636 392.3155 49.0394 71.379 194.2807 79.8814 109.6659 144.6658;
	20.0451 15.2605 11.6605 10.8569 11.3033 375.5571 46.9446 71.24 169.5069 65.0502 105.4978 117.8064;
	9.2841 7.7617 5.7653 6.3727 8.5785 206.3027 25.7878 52.5284 61.142 41.8186 57.1159 75.7337;
	0.7932 0.8525 0.4138 1.4637 3.0448 50.6964 6.337 11.0545 20.0721 18.0169 18.7455 32.6287;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];