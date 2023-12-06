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
	0.422 0.3624 0.3036 0.0 0.0 0.1765 0.0221 0.1431 0.0956 0.0 0.0 0.0;
	10.704 5.0923 5.0298 0.7734 1.6479 87.2009 10.9001 10.7775 99.6738 22.9896 21.0699 41.6344;
	8.3691 6.7891 6.0885 1.6004 3.6072 152.5215 19.0652 20.5393 175.0508 33.8418 32.6278 61.2877;
	10.1226 9.7484 8.6303 3.5415 3.4501 163.3203 20.415 25.5736 183.0928 45.3097 73.7338 82.0561;
	16.5321 12.0429 12.2328 10.6049 9.8546 63.0265 7.8783 15.3738 145.4008 87.5251 133.8284 158.5084;
	19.1883 13.34 12.9147 11.1217 9.2107 46.0972 5.7621 18.6027 152.0674 69.182 163.9249 125.2891;
	18.7865 13.0435 12.0861 11.0941 9.8628 50.7487 6.3436 18.5153 156.989 62.9194 164.8336 113.9474;
	13.9606 10.2095 8.3367 10.2021 8.7286 226.4784 28.3098 15.7726 228.8154 67.2026 66.58 121.7043;
	9.7919 7.763 6.0441 8.5318 8.8389 241.0579 30.1322 14.2788 230.8107 99.5371 69.0604 180.2623;
	7.4531 5.6939 4.2388 5.1329 8.3559 212.841 26.6051 17.7773 214.0699 87.4998 48.1453 158.4626;
	1.6731 0.9764 0.8629 1.0412 4.3243 172.3148 21.5394 32.9867 179.9806 15.4532 7.999 27.9858;
	0.2069 0.1875 0.1816 1.0039 1.8551 53.3844 6.673 8.9325 46.5349 0.0 1.9035 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
