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
	0.1628 0.1621 0.24 0.0 0.0 0.0013 0.0002 0.0 0.0813 0.0 0.0 0.0;
	9.2229 7.144 5.2921 1.1644 3.5108 175.54 21.9425 10.2767 148.4944 19.8117 21.6334 35.8791;
	20.5762 16.0467 12.2588 2.1708 3.8277 279.3592 34.9199 6.4851 118.3263 27.8104 29.5349 50.3647;
	24.071 16.8068 13.8831 4.1725 3.8687 316.7051 39.5881 14.1771 126.1878 68.3677 93.3873 123.8143;
	25.7273 16.6366 13.8548 3.9179 2.5815 219.4603 27.4325 27.3767 129.8895 215.4886 155.66 390.2511;
	25.9535 16.5426 13.8326 3.4355 3.0338 209.5182 26.1898 36.0452 102.3406 251.6388 164.8052 455.7195;
	25.8853 16.5331 13.7863 2.6777 3.057 145.5454 18.1932 27.2296 35.6454 248.401 142.0902 449.8558;
	25.5699 16.5546 13.7855 2.0799 7.2681 185.9355 23.2419 23.5536 35.4308 308.6711 199.923 559.0052;
	21.8878 16.4227 13.7008 1.482 7.0001 185.4351 23.1794 26.4246 32.5512 306.0829 204.7158 554.318;
	15.4546 15.9597 10.6618 1.4728 7.299 167.8642 20.983 41.4549 42.8932 246.3797 174.3506 446.1951;
	7.2375 9.7298 4.5379 1.0646 12.4782 241.0721 30.134 53.3054 142.9706 209.9443 201.9919 380.2105;
	0.985 0.9392 0.5829 1.5084 4.3979 65.4157 8.177 12.8714 35.2772 66.0646 51.0642 119.6435;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
	0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0;
];
