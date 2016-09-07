% Lab 1 Inertia Calculations
% By Drew Wynne 
% Commenced 2016, 08, 25
% Completed TBA

%% Measured data
w1 = 12e-3;
w2 = 31.2e-3;
w3 = 12e-3;

R = (180e-3)/2;
r = (19.1e-3)/2;

%% Volume of roller

% V = pi*r^2*h
V_axle = pi * r^2 * (w1 + w2 + w3);
V_annulus = pi * (R^2 - r^2) * w1;

%% Mass of roller
% densities of metals used
rho_brass = 8500;
rho_aluminium = 2700;

% m = rho*V
m_axle = rho_brass*V_axle;
m_annulus = rho_aluminium*V_annulus;

m_total = m_axle + 2 * m_annulus;
fprintf('Total Mass = %f kg\n', m_total);
%% Moment of inertia of roller

% Axle 
% I = (1/2)*m*r^2
I_axle = diskInertia(m_axle,r);

% Annulus
% I = (1/2)*M*(R^2 + r
I_annulus = annulusInertia(m_annulus,r, R);


% Total
I_total = I_axle + 2*I_annulus;

fprintf('Mass moment of inertia for roller is: %f kg*m^2\n', I_total);



