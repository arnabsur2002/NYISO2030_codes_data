 NYISO2030_codes_data is written primarily in MATLAB. It contains all the codes required to run SCUC for the average scenarios (load and VRES) and SCED for each of the 200 profiles using the unit commitment obtained in the first stage, before and after integrating the scores. It contsins four folders and a number is assigned to each of the folder as per their sequence of execution.
 
Scenarios: This folder creates scenarios using PGscen and convert them into executable m-files through MATLAB commands. 

SCUC/SCED: This folder runs SCUC and SCED for a NYISO2030 prototype. 

Scores: This folder creates and integrates scores into the New York test case using the day ahead contract and the real-time dispatch of energy obtained in the previous step. 

SCUC/SCED_scores: This folder runs SCUC and SCED for the same test case after integrating the scores.
