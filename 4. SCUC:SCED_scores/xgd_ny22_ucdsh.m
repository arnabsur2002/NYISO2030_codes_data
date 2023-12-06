function xgd_table = xgd_ny22_ucdsh(mpcase)
%EX_XGD_UC  Example xGenData table for stochastic unit commitment.

% 	See function 	ex_xgd_uc.m
%									xgendatagr0v3.m
% 	Alberto J. Lamadrid L.
% 	2022.02.27
%
%   This file is part of MOST.
%   Covered by the 3-clause BSD License (see LICENSE file for details).
%   See https://github.com/MATPOWER/most for more info.

%%-----  initialization and arg checking (DO NOT CHANGE)  -----
[GEN_BUS, PG, QG, QMAX, QMIN, VG, MBASE, GEN_STATUS, PMAX, PMIN, ...
    MU_PMAX, MU_PMIN, MU_QMAX, MU_QMIN, PC1, PC2, QC1MIN, QC1MAX, ...
    QC2MIN, QC2MAX, RAMP_AGC, RAMP_10, RAMP_30, RAMP_Q, APF] = idx_gen;
[PW_LINEAR, POLYNOMIAL, MODEL, STARTUP, SHUTDOWN, NCOST, COST] = idx_cost;

%% initial xGenData
xgd_table.colnames = {
    'CommitKey', ...
			'CommitSched', ...
				'MinUp', ...
					'MinDown', ...
						'PositiveActiveReservePrice', ...
							'PositiveActiveReserveQuantity', ...
								'NegativeActiveReservePrice', ...
									'NegativeActiveReserveQuantity', ...
										'PositiveActiveDeltaPrice', ...
											'NegativeActiveDeltaPrice', ...
												'PositiveLoadFollowReservePrice', ...
													'PositiveLoadFollowReserveQuantity', ...
														'NegativeLoadFollowReservePrice', ...
															'NegativeLoadFollowReserveQuantity', ...
																'RampWearCostCoeff', ...
																	'InitialPg', ...
%																		'InitialState', ...
};



ngen = size(mpcase.gen, 1);					% number of generators
il = isload(mpcase.gen); 

CommitKey0	=	1	;	%	1	
CommitSched0 	=	1	;	%	1	
MinUp0	=	1	;	%	1	
MinDown0	=	1	;	%	1	
PosActResPrice0	=	0.5	;	%	5	
PosActResQuant0	=	inf	;	%	250	multiplier for PMAX
NegActResPrice0	=	2*PosActResPrice0;	;	%	10	
NegActResQuant0	=	inf	;	%	250	multiplier for PMAX
PosActDelPrice0	=	1e-9	;	%	1.00E-09	
NegActDelPrice0	=	1e-9	;	%	1.00E-09	
PosLFResPrice0 	=	1e-6	;	%	1.00E-06	
PosLFResQuant0 	=	inf	;	%	250	multiplier for PMAX
NegLFResPrice0 	=	1e-6	;	%	1.00E-06	
NegLFResQuant0 	=	inf	;	%	250	multiplier for PMAX

RampWearCostCoeff0 = 0;
InitialPg0 = 0;

xgd_table.data = ones(ngen, 1)*[
	CommitKey0	CommitSched0 	MinUp0	MinDown0	PosActResPrice0	PosActResQuant0	NegActResPrice0	NegActResQuant0	PosActDelPrice0	NegActDelPrice0	PosLFResPrice0 	PosLFResQuant0 	NegLFResPrice0 	NegLFResQuant0...
		RampWearCostCoeff0, InitialPg0;
];

% Index of variables, following structure order
idCommitKey	=	1	;
idCommitSched	=	2	;
idMinUp	=	3	;
idMinDown	=	4	;
idPositiveActiveReservePrice	=	5	;
idPositiveActiveReserveQuantity	=	6	;
idNegativeActiveReservePrice	=	7	;
idNegativeActiveReserveQuantity	=	8	;
idPositiveActiveDeltaPrice	=	9	;
idNegativeActiveDeltaPrice	=	10	;
idPositiveLoadFollowReservePrice	=	11	;
idPositiveLoadFollowReserveQuantity	=	12	;
idNegativeLoadFollowReservePrice	=	13	;
idNegativeLoadFollowReserveQuantity	=	14	;
idRampWearCostCoeff	=	15	;
idInitialPg	=	16	;
idInitialState	=	17	;


%%-----  Values to set variable limits  -----
% Change here, and comment/uncomment on modify limits

qpres	=	mpcase.gen(:, PMAX)	;	% 	250
qnres	=	mpcase.gen(:, PMAX)	;	% 	250
ndel	=	2e-9	;	% 	1e-9
qplf	=	mpcase.gen(:, PMAX)	;	% 	250
qnlf	=	mpcase.gen(:, PMAX)	;	% 	250

%%-----  Modify limits  -----

xgd_table.data(:,	idPositiveActiveReserveQuantity	) 	=	qpres	;
xgd_table.data(:,	idNegativeActiveReserveQuantity	) 	=	qnres	;
xgd_table.data(:,	idNegativeActiveDeltaPrice	) 	=	ndel	;
xgd_table.data(:,	idPositiveLoadFollowReserveQuantity	) 	=	qplf	;
xgd_table.data(:,	idNegativeLoadFollowReserveQuantity	) 	=	qnlf	;

%%-----  set limits for deferrable demand  -----
idxrescol = [idPositiveActiveReserveQuantity, idPositiveLoadFollowReserveQuantity];                % index for reserve quantities to be set proportional to capacity, positive
idxrescoln = [idNegativeActiveReserveQuantity, idNegativeLoadFollowReserveQuantity];               % index for reserve quantities to be set proportional to capacity, negative
xgd_table.data(il, [idxrescol, ...
  idxrescoln]) = Inf;               % set reserves to Inf for loads
  
igen = find(il);
  xgd_table.data(igen, idCommitKey) = 2*ones(length(igen), 1); % Forced on
%  xgd_table.data(igen, idInitialState) = ones(length(igen), 1);
  xgd_table.data(igen, idMinUp) = ones(length(igen),1);
  xgd_table.data(igen, idMinDown) = xgd_table.data(igen, idMinUp);
