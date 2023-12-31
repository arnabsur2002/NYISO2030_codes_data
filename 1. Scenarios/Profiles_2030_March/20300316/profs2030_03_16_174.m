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
	1.0111 0.8207 0.6949 0.0 0.0 15.0521 1.8815 4.5716 0.5092 0.0 0.0 0.0;
	6.0165 7.4192 4.5481 2.2543 0.9364 427.6234 53.4529 31.4942 121.9964 72.6921 28.147 131.6457;
	16.3501 15.9281 11.7834 5.8986 1.3233 401.1032 50.1379 48.7871 169.9966 240.4335 77.1593 435.4265;
	22.9026 16.6607 13.8 9.5376 2.1909 406.9666 50.8708 56.6981 196.549 340.421 118.4328 616.5045;
	25.203 16.3661 13.8 9.2836 3.4293 418.2593 52.2824 58.7377 205.4414 325.9793 89.4925 590.3505;
	24.5644 16.4883 12.3814 9.2286 5.2568 439.2095 54.9012 59.3924 226.9469 335.6999 82.0194 607.9545;
	21.7744 15.6522 8.9445 7.7356 5.44 439.6874 54.9609 59.3668 219.0845 337.7383 103.6902 611.6461;
	19.3866 12.7274 10.6661 5.6349 2.6711 365.9903 45.7488 62.8697 152.0097 291.7493 117.7414 528.3597;
	18.0423 11.2814 12.1709 4.3238 1.993 318.2636 39.7829 61.7302 116.5859 238.6658 108.97 432.2253;
	14.927 9.7919 10.3614 3.5662 1.554 246.2536 30.7817 56.8922 104.0645 144.6503 72.5468 261.9626;
	7.5249 6.2479 5.5278 5.0036 2.0068 151.583 18.9479 34.1802 136.7296 42.4162 23.0634 76.8159;
	1.2433 1.0312 0.8029 1.3372 0.6932 63.7455 7.9682 11.442 38.8388 5.5312 0.0 10.017;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
