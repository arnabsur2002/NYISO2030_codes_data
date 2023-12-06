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
	0.42 0.3586 0.3086 0.0 0.0 0.7591 0.0949 0.9394 0.9992 0.0 0.0 0.0;
	6.4192 8.006 3.8712 0.8996 0.0 97.1301 12.1413 16.2817 38.6688 104.0298 30.7205 188.3985;
	9.8304 8.4344 6.8644 0.705 0.5317 151.4099 18.9262 13.0614 112.0578 175.6651 90.9621 318.1306;
	13.4164 11.1828 8.5764 0.8189 1.1357 178.6084 22.326 11.9225 157.9606 219.7761 129.7947 398.0159;
	9.0767 8.8529 7.1388 5.5173 7.5502 164.1361 20.517 7.1433 144.0812 239.8466 94.8567 434.3637;
	10.5955 7.341 4.8383 6.5785 4.1509 221.7761 27.722 11.5493 174.0169 247.1607 119.1237 447.6096;
	11.6198 7.0424 4.5854 8.8841 4.4802 235.5939 29.4492 15.0697 192.4885 197.9556 120.8147 358.4987;
	7.1315 4.9487 5.9823 10.2712 3.1494 173.6171 21.7021 15.343 206.5612 67.8933 66.97 122.9552;
	5.3194 5.9321 5.6457 9.2605 4.3251 87.0415 10.8802 9.016 176.9366 78.8151 84.898 142.7347;
	2.5723 3.8612 4.5508 6.4867 2.0991 46.6602 5.8325 5.4479 117.3023 87.4389 65.9455 158.3524;
	0.965 1.3579 1.2487 1.8068 0.0365 51.3126 6.4141 5.6276 102.5471 20.9579 9.392 37.9549;
	0.2969 0.2643 0.2438 1.1188 1.2174 57.9917 7.249 6.6037 57.0145 6.2109 4.3487 11.2481;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];