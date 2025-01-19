classdef Cs133D2Constants
properties (Constant)
M           = 2.20694650E-25;                           % Mass
NucSpin     = 7/2;                                      % nuclear spin

I_sat       = 11.023;                                   % Saturation intensity W/m^2
I_sat_iso   = 27.059                                    % Saturation intensity W/m^2 (isotropic light)
sigma_scatt_sigma = 3.469E-13                           % cross section for on-resonant σ transition, in m^2
lms         = 852E-9;                                   % wavelength
omg         = 2 * pi * 3.5172571850E14;                 % In hertz
k           = 1173230.71049 * 2 * pi;
p           = 1173230.71049 * 6.62606877E-34            % momentum : hbar k = h k/2π 
Gam         = 3.2815E7;                                 % decay rate : In hertz
semilw      = 3.2815E7 / 2;                             % half of the linewidth, in Hz
T_D         = 125E-6;                                   % Doppler temperature
v_rec       = 3.5225E-3;                                % In m/s
v_gam       = 3.2815E7 / 2 / (1173230.71049 * 2 * pi);  % velocity for doppler shifting to linewidth/2
v_D         = 0.0884;

g_I         = -0.00039885395;                           % Nuclear g-factor
g_J_exc     = 1.3340                                    % 6 P_3/2 Total Electronic g-factor
g_J_gnd     = 2.00254032;                               % 6 S_1/2 Total Electronic g-factor

J_exc       = 3/2;
J_gnd       = 1/2;
A_hf_exc    = 50.275e6;                                 % 6 P_3/2 Magnetic Dipole Constant
A_hf_gnd    = 2.2981579425e9;                           % 6 S_1/2 Magnetic Dipole Constant
end
end
