% lab 1 motion calculations
% by Drew Wynne
% commenced: 2016, 08, 26
% completed: TBA

%% Import data from spreadsheet

% read from spreadsheet
filename = 'Laboratory 1 Data.xlsx';
data = xlsread(filename, 'A2:G4');

run = data(:, 1);
h = data(:, 2);
theta = data(:, 3);
t = data(:, 7);

% other measured constants
s = 1.21;
m = 1.75;

%% Calculate motion 
v = 2.*s./t;
a = v./t;

omega = v./r;
alpha = omega./t;

I = (2.*m.*9.81.*h - m.*v.^2)./omega.^2;


%% export to sheet
somedata = round([v, omega, a, alpha], 3);
outdata = [somedata, I_total.*ones(3, 1), I];
%outdata = round(outdata, 3);

xlswrite(filename, outdata, 1, 'B8');


fprintf('\nmotion calculations Complete\n');


