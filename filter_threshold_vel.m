function vectorOut = filter_threshold_vel(vectorIn,...
    rifThreshold)
 
% vectorOut = filter_threshold_vel(vectorIn, rifThreshold) return a vector
% equal to the input signal except for the indexes found to have values >=
% or <0 to the rifThreshol variable (that are set to zero).
% 
% vectorIn      dobles      Nx1  gaze vector 
% 
% rifThreshold  doubles     1x1   velocity threshold
% 
% vectorOut     doubles     Nx1   filtered gaze vector
%                                
% 
% Author:      Pamela Federighi
% Time-stamp:  2011-02-13 
% E-mail:      federighi@unisi.it
% Comments made by Valeria Serchi Mar 2016

x = vectorIn;         % Assign to the variable x the input gaze vector
rif = rifThreshold;   % Assign to the variable rif the vale of the input variable rifThreshold
[n, ~] = size(x);     % Assign to the variable n the number of the columns of the gaze vector
y = zeros(n, 1);      % Initialize the vector y to a vector of zeros having the same size of 
                      % the input gaze vector

% Make a loop on the rows of the input gaze vector. If a value within +-rif 
% is found, it is assigned to the corresponding row of the vector y  
for i = 1 : n
    if x(i) >= rif || x(i) <= -rif
        y(i) = x(i);

    end
end

vectorOut = y; % Assign to the output variable vectorOut the value of the variable y.



