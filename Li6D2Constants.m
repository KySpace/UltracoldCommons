classdef Li6D2Constants
properties (Constant)
M           = 9.9883414E-27;
NucSpin     = 1;                                        % nuclear spin

lmd         = 670.977E-9;
omg         = 2.8076E+15;
mu          = 3.977E-29;                                % Transition Matrix Element
sigma_scatt_sigma = 2.150E-13;                          % cross section for on-resonant σ transition, in m^2

J_exc       = 3/2;
J_gnd       = 1/2;

g_I         = -0.0004476540;                            % Total Nuclear g-factor
g_J_exc     = 1.335;                                    % 2 P_3/2 Total Electronic g-factor
g_J_gnd     = 2.0023010;                                % 2 S_1/2 Total Electronic g-factor

A_hf_exc    = -1.155e6;                                 % 2 P_3/2 Magnetic Dipole Constant
A_hf_gnd    = 152.1368407e6;                            % 2 S_1/2 Magnetic Dipole Constant
end
end
