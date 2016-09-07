% Lab 2 Motion Calculations
% By Drew Wynne
% Commenced: 27, 08, 2016
% Completed: TBA

%% Import data from spreadsheet
try
	% See if there is an existing instance of Excel running.
	% If Excel is NOT running, this will throw an error and send us to the catch block below.
	Excel = actxGetRunningServer('Excel.Application');
	% If there was no error, then we were able to connect to it.
	Excel.Quit; % Shut down Excel.
catch
	% No instance of Excel is currently running.
end

% read from spreadsheet
filename = 'Laboratory 2 Data.xlsx';
data1 = xlsread(filename, 'B3:C11');
data1(~any(~isnan(data1), 2), :) = [];
data2 = xlsread(filename, 'D13:F16');

m = data1(:, 1);
h = data1(:, 2);

t_g = data2(:, 1);
t_r = data2(:, 2);
n_r = data2(:, 3);

%% Other measured constants
g = 9.81;



%% Calculate motion 

% F = m*g
F = m.*g;

v = 2.*h./t_g;
a = v./t_g;

omega = v./r;
alpha = omega./t_g;

T = F.*r;

% Energy in Flywheel
E = m.*g.*h - 0.5.*m.*v.^2;

% work due to friction per revolution
n_2(2) = 14;
W_f_r = E./n_r;
n = h./(2.*pi.*r); % number of revolutions before impact with ground
W_f = W_f_r.*n.*(0.25);

I_motion = T./alpha;
I_energy = 2.*E./omega.^2;


%% export to sheet
%somedata = round([v, omega, a, alpha], 3);
outdata = [I_motion, I_energy];
%outdata = round(outdata, 3);

motiondata = [v, omega, a, alpha];

xlswrite(filename, I_total, 1, 'J7');
xlswrite(filename, outdata, 1, 'K7');
xlswrite(filename, motiondata, 1, 'P5');


fprintf('\nmotion calculations Complete\n');






