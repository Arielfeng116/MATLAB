% this function is written by Meili Feng (meili.feng0116@gmail.com)
% All rights reserved. 
% 
% the function offers extraction of subset data by year and day e.g. 1980-30, or 1980 only


function T = findT3(rawdata,year,day)
%% finds year and day
% input rawdata format: year-month-day (1-3colums) and data (4:end columns)
% output T dataset: rows of corresponding date and all columns 

switch nargin
    case 2
        v = (rawdata (:,1)==year);
        ind = find(v==1);
        T = rawdata(ind,:);
    case 3
        v1 = (rawdata (:,1)==year);
        v3 = (rawdata (:,3)==day);
        
        v = v1 & v3;
        ind = find(v==1);
        T = rawdata(ind,:);

       
    otherwise
        disp('incorrect input, try aggain');
        T = [];
end
