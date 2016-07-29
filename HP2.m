% This code is written by Meili Feng (meili.feng0116@gmail.com), 29 July 2016

% the function is for calculation of hydropeaking characterization indicator hp2 - rate of change
% apply methodology developed by Carolli et al. 2015
% check the original method description and applications as below paper information:
% paper citation: Carolli, M. Davide V, Annunziato S, Guido Z, Maria C.B, Knut A. ...
% A simple procedure for the assessment of hydropeaking flow alterations applied to several European streams. ...
% Aquatic Sciences 77, 639-653, doi:10.1007/s00027-015-0408-5 (2015).


function hp2 = HP2( vector,DT )
%TP Summary of this function goes here
%   vector as input time series dataset, resolution conformed with DT parameter
%   DT is the time interval to be calculated 
%   DT=1(10min); DT=3(30min); DT=6(1hour); 
%   v1,v2 are the values at Tk and Tk+DT;
%   vmax takes the maximum difference between v1 v2;
%   tp is the T change of rate during short sub-daily time scales;

v1 = vector(1:end-DT);
v2 = vector(DT+1:end);
v = abs(v1-v2);
hp2 = prctile(v,90);

end


