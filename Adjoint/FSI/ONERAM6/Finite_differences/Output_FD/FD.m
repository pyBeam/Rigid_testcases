clear;clc;
% FD based sensitivities for ONERA M6 FSI run
E = 40000000000


%%
DeltaE = 1.0e-05;

Cd_p =  0.007395253196785666;
Cl_p =  0.22023654290809125;

Cd_m = .007395195384908764;
Cl_m = 0.22023557009459693;

cd_prime = (Cd_p - Cd_m)/(2*DeltaE*E);
cl_prime = (Cl_p - Cl_m)/(2*DeltaE*E);

fprintf("DeltaE = %f9. cd_prime = %.9e \n",DeltaE,cd_prime)
fprintf("\n")
fprintf("DeltaE = %f9. cl_prime = %.9e \n",DeltaE,cl_prime)
fprintf("\n")
fprintf("Dh = %f.\n",2*DeltaE*E)
fprintf("\n")
fprintf("\n")