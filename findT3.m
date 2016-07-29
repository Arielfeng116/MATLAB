function T = findT3(rawdata,year,day)
%% finds year and day
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
