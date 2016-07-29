function hp2 = HP2( vector,DT )
%TP Summary of this function goes here
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


