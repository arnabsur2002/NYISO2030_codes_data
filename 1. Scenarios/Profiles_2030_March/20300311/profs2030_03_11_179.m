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
	14.1979 15.558 9.0663 1.5131 0.5005 184.6671 23.0834 37.0121 19.5053 67.4441 40.8661 122.1416;
	17.7672 16.3108 11.9858 2.2417 3.9535 359.4968 44.9371 64.4747 14.0948 26.0665 103.97 47.2066;
	20.8687 16.6029 13.7999 5.6571 9.6914 392.1046 49.0131 67.1927 26.3588 71.4434 156.1407 129.3845;
	23.7191 16.6042 13.3787 11.0941 9.4224 378.8343 47.3543 64.3729 156.5101 150.8534 147.0179 273.1964;
	26.2909 16.6083 13.7302 11.2736 9.5995 386.8721 48.359 67.0265 199.8377 227.8165 165.044 412.5771;
	26.334 16.6083 13.7783 11.1255 8.5536 387.3442 48.418 67.8538 203.9175 251.4771 169.9737 455.4265;
	26.3192 15.7337 13.5264 11.2377 6.3882 405.6328 50.7041 67.3388 150.4202 185.9482 161.4675 336.7533;
	23.1186 15.4656 13.2327 11.3665 7.2093 415.3795 51.9224 63.5291 126.948 168.9416 141.0038 305.9542;
	17.3362 11.8594 9.4442 9.0075 7.3875 400.3705 50.0463 51.9994 114.6909 131.0784 103.5224 237.3838;
	9.3268 8.6839 6.045 4.8709 4.527 235.8324 29.4791 14.9095 66.8426 70.6441 12.3697 127.937;
	0.8089 0.8749 0.5445 1.2449 2.4649 45.4165 5.6771 8.4157 20.1595 21.2656 14.092 38.5122;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];