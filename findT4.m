function T = findT4(rawdata,month,year)
% find year and month
% incase two input :rawdata and month, find month
% three input: rawdata,month,year
switch nargin
    case 2
        v = (rawdata (:,2)==month);
        ind = find(v==1);
        T = rawdata(ind,:);
    case 3
        v1 = (rawdata (:,1)==year);
        v2 = (rawdata (:,2)==month);
        
        v = v1 & v2;
        ind = find(v==1);
        T = rawdata(ind,:);

       
    otherwise
        disp('incorrect input, try aggain');
        T = [];
end
