# Rigid_testcases
Collection of test cases featuring the nonlinear rigid elements.

This folder contains validation of some testcases featuring the new nonlinear rigid elements.
Penalty method is used for rigid elements although CASE 2 feature Adjoint sensitivity also using the Lagrange multiplier method.

- Folder Primal features same testcases involving ONERA M6 testcase present in Testcases_Eurogen_2019
a) CASE1
b) CASE2
c) FSI_AoA3_06 both All beam and rigid element version of the wing to be compared

All cases feature small differences in the solution due to the fact that the beam version uses beam element with high inertial properties to simulate a
rigid behaviour. This both only approach the "real" rigid behaviour and instabilizes the solution.
It can be seen how to achieve the same solution the rigid element (although slightly slower in assembling the penalty terms) is far more robust
and requires less loadstep for a robust converged solution.
Rigid_torsional_spring features is an analytic test early used to validate the elements. It can be thought to be used as regression.
No nastran validation is privided as Nastran's RBE2 (to the knowledge of the writer) only features linear RBE2 also in nonlinear static solver.

- Folder Adjoint presents the same set of testcases used in Testcases_Eurogen_2019
a) CASE2 sensitivity is evaluated with Adjoitn and compared with Finite differences. all solutions are rpvided
b) An FSI case in which AD sensitivity dCd/dE on the ONERA  is evaluated in Adjoint folder with solution calculated in the
Primal Folder. Finite DIfferences are calculated in the relartive folder using a central scheme over the Young Modulus E. in the same fasion as
what proposed for the All beam testcase in Testcases_Eurogen_2019
