function dataOut = filter_butterworth_vel(dataIn)
 
% dataOut = filter_butterworth(dataIn) filter the input data through a
% butterworth filter.
% 
% dataIn       doubles     Nx7     data to be filtered
%
% dataOut      doubles     Nx7     filtered data
% 
% Author:      Pamela Federighi
% Time-stamp:  2011-02-13 
% E-mail:      federighi@unisi.it
% Comments made by Valeria Serchi Mar 2016

n = 3; % Assign to the variable n the order of the butterworth filter
WNiquist = 240 / 2; % Define the analysis Nyquist pulsation
Wn = 40 / WNiquist; % Define the cut pulsation          
ftype = 'low';  % Define the filter type
[z, p, k] = butter(n, Wn, ftype); % Compute the butterworth filter parameters
[sos, g] = zp2sos(z, p, k); % Find the zero poles for the filter
Hd = dfilt.df2sos(sos, g);  % Create the butterworth filter with the parameters previously defined
% h = fvtool(Hd);	% Launch the filter visualization tool              
% set(h, 'Analysis', 'freq') % Set the axis of the filter visualization tool

dataOut = filter(Hd, dataIn); % Filter the input data 


