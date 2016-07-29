function hp = HP1(vector,DT)
%HP Summary of this function goes here
%   DT is the time interval to be calculated
%   DT=1(10min); DT=3(30min); DT=6(1hour); 
%   v1,v2 are the values at Tk and Tk+DT;
%   vmax takes the maximum difference between v1 v2;
%   tp is the T change of rate during short sub-daily time scales;

hp=(nanmax(vector)-nanmin(vector))/nanmean(vector);


end


