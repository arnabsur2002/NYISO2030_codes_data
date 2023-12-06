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
	0.0951 0.0972 0.1051 0.0 0.0 1.0197 0.1275 0.1784 0.0 0.0 0.0 0.0;
	2.9372 2.5983 2.4685 2.2815 9.4266 138.5871 17.3234 7.9016 17.44 40.0349 21.1293 72.5034;
	9.6087 10.1835 8.5051 7.6317 14.386 211.9707 26.4963 19.4215 65.0778 159.0698 83.6501 288.0763;
	17.1922 15.2181 12.0853 10.2049 14.1678 271.4679 33.9335 24.8417 107.4261 252.163 131.7118 456.6688;
	24.113 16.7094 14.1098 10.6703 13.734 464.4427 58.0553 61.189 264.9514 245.9649 79.2449 445.4439;
	26.2281 16.4089 13.9841 11.1502 13.4353 455.5311 56.9414 59.1275 275.163 291.3562 146.0716 527.6478;
	26.9944 16.5899 14.0362 11.2003 13.1402 454.3847 56.7981 61.1262 280.0437 310.6884 169.7198 562.6585;
	27.4218 17.2747 14.0177 4.9895 6.5891 457.9486 57.2436 72.3569 285.3111 230.2277 136.2037 416.9437;
	27.3227 17.0972 13.8787 4.1256 5.8744 460.3245 57.5406 73.7376 284.6628 129.7618 67.3845 234.9995;
	23.8892 16.4497 11.509 3.0969 6.4652 456.994 57.1242 72.0397 272.7259 54.1027 33.452 97.9804;
	8.6275 6.7923 5.3613 3.0647 10.1393 367.4785 45.9348 29.8225 128.3025 14.5763 7.5283 26.3977;
	1.3958 1.0803 0.858 1.4749 2.7064 58.795 7.3494 9.2343 33.4805 16.0641 10.0088 29.0922;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];