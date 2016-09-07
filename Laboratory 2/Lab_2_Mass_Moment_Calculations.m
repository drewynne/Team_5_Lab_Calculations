% Lab 2 Mass and Moment Calculations
% By Drew Wynne
% Commenced: 27, 08, 2016
% Completed: TBA


%% Initial Measurements

w1 = 78e-3;
w2 = 40e-3;
w3 = 78e-3;

d = 29.1e-3;
r = d/2;
R = r + 137e-3;

%% Volumes

V_shaft = pi*r.^2*(w1 + w2 + w3);

V_flywheel = pi*(R^2 - r^2)*w2;

%% Masses

rho_steel = 7.8e3;

m_shaft = rho_steel.*V_shaft;
m_flywheel = rho_steel*V_flywheel;

m_total = m_shaft + m_flywheel;

fprintf('Total Flywheel Mass = %f kg\n', m_total);

%% Moment of inertia

rho_steel = 7.8e3;

I_shaft = diskInertia(m_shaft, r);

I_flywheel = annulusInertia(m_flywheel, r, R);

I_total = I_shaft + I_flywheel;

fprintf('Total Flywheel Moment of Inertia = %f kg*m^2\n', I_total);