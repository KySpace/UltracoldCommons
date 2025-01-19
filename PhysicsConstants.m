classdef PhysicsConstants
properties (Constant)
%% Fundamentals
hbar        = 1.054571726E-34;
h           = 2 * pi * 1.054571726E-34;
c           = 2.99792458E8;
eps_0       = 8.854E-12;                                % Permittivity of Vacuum
mu_0        = 4 * pi * 1E-7;                            % Permeability of Vacuum
mu_B        = 9.27400899E-24;                           % Bohr magneton
k_B         = 1.3806503E-23;                            % Boltzmann's Constant
%% Electrons
e_el        = 1.602E-19;
M_el        = 9.10938E-31;
g_S_el      = 2.0023193043737;                          % Electron spin g-factor
end
end