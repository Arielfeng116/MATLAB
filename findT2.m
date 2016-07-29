function T = findT2(rawdata,year,month,day)

switch nargin
    case 2
        v = (rawdata (:,1)==year);
        ind = find(v==1);
        T = rawdata(ind,:);
    case 3
        v1 = (rawdata (:,1)==year);
        v2 = (rawdata (:,2)==month);
        
        v = v1 & v2;
        ind = find(v==1);
        T = rawdata(ind,:);
    case 4
        v1 = (rawdata (:,1)==year);
        v2 = (rawdata (:,2)==month);
        v3 = (rawdata (:,3)==day);

        v = v1 & v2 & v3;
        ind = find(v==1);
        T = rawdata(ind,:);
       
    otherwise
        disp('incorrect input, try aggain');
        T = [];
end
