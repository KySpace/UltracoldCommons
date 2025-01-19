csd2 = Cs133D2Constants;
lid2 = Li6D2Constants;
phys = PhysicsConstants;
close all; fig = figure(1);

%%

B_q = [0 : 0.005 : 0.1, 0.15 : 0.05 : 1.5] + 0.0001;
E_hf_Cs_gnd = calczeeman(csd2.g_I, csd2.g_J_gnd, csd2.A_hf_gnd * phys.h, csd2.NucSpin, csd2.J_gnd, B_q);
plot(B_q*10000, E_hf_Cs_gnd); 
xlim([0,1000]); ylim([-8000,6000]);
saveas(fig, "Scripts/E_hf_Cs_gnd.svg", "svg");
xlim([0,15000]); ylim([-25000,25000]);
saveas(fig, "Scripts/E_hf_Cs_gnd_zoom.svg", "svg");

B_q = [0 : 0.001 : 0.05, 0.055 : 0.005 : 0.1] + 0.00001;
E_hf_Cs_exc = calczeeman(csd2.g_I, csd2.g_J_exc, csd2.A_hf_exc * phys.h, csd2.NucSpin, csd2.J_exc, B_q);
plot(B_q*10000, E_hf_Cs_exc); 
xlim([0,1000]); ylim([-8000,6000]);
saveas(fig, "Scripts/E_hf_Cs_exc.svg", "svg");
xlim([0,500]); ylim([-1500,1500]);
saveas(fig, "Scripts/E_hf_Cs_exc_zoom.svg", "svg");

%%

B_q = [0 : 0.001 : 0.05, 0.055 : 0.005 : 0.1] + 0.00001;
E_hf_Li_gnd = calczeeman(lid2.g_I, lid2.g_J_gnd, lid2.A_hf_gnd * phys.h, lid2.NucSpin, lid2.J_gnd, B_q);
plot(B_q*10000, E_hf_Li_gnd); 
xlim([0,1000]); ylim([-5000,5000]);
saveas(fig, "Scripts/E_hf_Li_gnd.svg", "svg");
xlim([0,160]); ylim([-300,300]);
saveas(fig, "Scripts/E_hf_Li_gnd_zoom.svg", "svg");

B_q = [0 : 0.00001 : 0.0006, 0.0006 : 0.005 : 0.1] + 0.000001;
E_hf_Li_exc = calczeeman(lid2.g_I, lid2.g_J_exc, lid2.A_hf_exc * phys.h, lid2.NucSpin, lid2.J_exc, B_q);
plot(B_q*10000, E_hf_Li_exc); 
xlim([0,1000]); ylim([-5000,5000]);
saveas(fig, "Scripts/E_hf_Li_exc.svg", "svg");
xlim([0,6]); ylim([-20,20]);
saveas(fig, "Scripts/E_hf_Li_exc_zoom.svg", "svg");

% E_hf_Li_gnd = calczeeman(lid2.g_I, lid2.g_J_gnd, lid2.A_hf_gnd * phys.h, lid2.NucSpin, lid2.J_gnd, B_q);
% E_hf_Li_exc = calczeeman(lid2.g_I, lid2.g_J_exc, lid2.A_hf_exc * phys.h, lid2.NucSpin, lid2.J_exc, B_q);

