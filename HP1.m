
% This code is written by Meili Feng (meili.feng0116@gmail.com), 29 July 2016

% the function is for calculation of hydropeaking characterization indicator hp1 - magnitude of hydropeaking
% apply methodology developed by Carolli et al. 2015
% check the original method description and applications as below paper information:
% paper citation: Carolli, M. Davide V, Annunziato S, Guido Z, Maria C.B, Knut A. ...
% A simple procedure for the assessment of hydropeaking flow alterations applied to several European streams. ...
% Aquatic Sciences 77, 639-653, doi:10.1007/s00027-015-0408-5 (2015).



function hp = HP1(vector,DT)
%HP Summary of this function goes here
%   DT is the time interval to be calculated
%   DT=1(10min); DT=3(30min); DT=6(1hour); 
%   v1,v2 are the values at Tk and Tk+DT;
%   vmax takes the maximum difference between v1 v2;
%   tp is the T change of rate during short sub-daily time scales;

hp=(nanmax(vector)-nanmin(vector))/nanmean(vector);


end


