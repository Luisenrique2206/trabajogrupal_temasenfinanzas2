%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'open_economy_nk3ia';
M_.dynare_version = '6.2';
oo_.dynare_version = '6.2';
options_.dynare_version = '6.2';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
M_.exo_names(1) = {'va'};
M_.exo_names_tex(1) = {'va'};
M_.exo_names_long(1) = {'va'};
M_.exo_names(2) = {'vg'};
M_.exo_names_tex(2) = {'vg'};
M_.exo_names_long(2) = {'vg'};
M_.exo_names(3) = {'vm'};
M_.exo_names_tex(3) = {'vm'};
M_.exo_names_long(3) = {'vm'};
M_.exo_names(4) = {'vy'};
M_.exo_names_tex(4) = {'vy'};
M_.exo_names_long(4) = {'vy'};
M_.exo_names(5) = {'vp'};
M_.exo_names_tex(5) = {'vp'};
M_.exo_names_long(5) = {'vp'};
M_.endo_names = cell(34,1);
M_.endo_names_tex = cell(34,1);
M_.endo_names_long = cell(34,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'c'};
M_.endo_names_long(1) = {'c'};
M_.endo_names(2) = {'rk'};
M_.endo_names_tex(2) = {'rk'};
M_.endo_names_long(2) = {'rk'};
M_.endo_names(3) = {'rr'};
M_.endo_names_tex(3) = {'rr'};
M_.endo_names_long(3) = {'rr'};
M_.endo_names(4) = {'w'};
M_.endo_names_tex(4) = {'w'};
M_.endo_names_long(4) = {'w'};
M_.endo_names(5) = {'h'};
M_.endo_names_tex(5) = {'h'};
M_.endo_names_long(5) = {'h'};
M_.endo_names(6) = {'k'};
M_.endo_names_tex(6) = {'k'};
M_.endo_names_long(6) = {'k'};
M_.endo_names(7) = {'q'};
M_.endo_names_tex(7) = {'q'};
M_.endo_names_long(7) = {'q'};
M_.endo_names(8) = {'i'};
M_.endo_names_tex(8) = {'i'};
M_.endo_names_long(8) = {'i'};
M_.endo_names(9) = {'lambda'};
M_.endo_names_tex(9) = {'lambda'};
M_.endo_names_long(9) = {'lambda'};
M_.endo_names(10) = {'r'};
M_.endo_names_tex(10) = {'r'};
M_.endo_names_long(10) = {'r'};
M_.endo_names(11) = {'pi'};
M_.endo_names_tex(11) = {'pi'};
M_.endo_names_long(11) = {'pi'};
M_.endo_names(12) = {'mc'};
M_.endo_names_tex(12) = {'mc'};
M_.endo_names_long(12) = {'mc'};
M_.endo_names(13) = {'g'};
M_.endo_names_tex(13) = {'g'};
M_.endo_names_long(13) = {'g'};
M_.endo_names(14) = {'a'};
M_.endo_names_tex(14) = {'a'};
M_.endo_names_long(14) = {'a'};
M_.endo_names(15) = {'piH'};
M_.endo_names_tex(15) = {'piH'};
M_.endo_names_long(15) = {'piH'};
M_.endo_names(16) = {'s'};
M_.endo_names_tex(16) = {'s'};
M_.endo_names_long(16) = {'s'};
M_.endo_names(17) = {'pH'};
M_.endo_names_tex(17) = {'pH'};
M_.endo_names_long(17) = {'pH'};
M_.endo_names(18) = {'yH'};
M_.endo_names_tex(18) = {'yH'};
M_.endo_names_long(18) = {'yH'};
M_.endo_names(19) = {'d'};
M_.endo_names_tex(19) = {'d'};
M_.endo_names_long(19) = {'d'};
M_.endo_names(20) = {'gdp'};
M_.endo_names_tex(20) = {'gdp'};
M_.endo_names_long(20) = {'gdp'};
M_.endo_names(21) = {'De'};
M_.endo_names_tex(21) = {'De'};
M_.endo_names_long(21) = {'De'};
M_.endo_names(22) = {'yz'};
M_.endo_names_tex(22) = {'yz'};
M_.endo_names_long(22) = {'yz'};
M_.endo_names(23) = {'rz'};
M_.endo_names_tex(23) = {'rz'};
M_.endo_names_long(23) = {'rz'};
M_.endo_names(24) = {'tb'};
M_.endo_names_tex(24) = {'tb'};
M_.endo_names_long(24) = {'tb'};
M_.endo_names(25) = {'xp'};
M_.endo_names_tex(25) = {'xp'};
M_.endo_names_long(25) = {'xp'};
M_.endo_names(26) = {'mp'};
M_.endo_names_tex(26) = {'mp'};
M_.endo_names_long(26) = {'mp'};
M_.endo_names(27) = {'tot'};
M_.endo_names_tex(27) = {'tot'};
M_.endo_names_long(27) = {'tot'};
M_.endo_names(28) = {'clog'};
M_.endo_names_tex(28) = {'clog'};
M_.endo_names_long(28) = {'clog'};
M_.endo_names(29) = {'wlog'};
M_.endo_names_tex(29) = {'wlog'};
M_.endo_names_long(29) = {'wlog'};
M_.endo_names(30) = {'hlog'};
M_.endo_names_tex(30) = {'hlog'};
M_.endo_names_long(30) = {'hlog'};
M_.endo_names(31) = {'klog'};
M_.endo_names_tex(31) = {'klog'};
M_.endo_names_long(31) = {'klog'};
M_.endo_names(32) = {'ilog'};
M_.endo_names_tex(32) = {'ilog'};
M_.endo_names_long(32) = {'ilog'};
M_.endo_names(33) = {'dlog'};
M_.endo_names_tex(33) = {'dlog'};
M_.endo_names_long(33) = {'dlog'};
M_.endo_names(34) = {'proof'};
M_.endo_names_tex(34) = {'proof'};
M_.endo_names_long(34) = {'proof'};
M_.endo_partitions = struct();
M_.param_names = cell(26,1);
M_.param_names_tex = cell(26,1);
M_.param_names_long = cell(26,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'alpha'};
M_.param_names_tex(2) = {'alpha'};
M_.param_names_long(2) = {'alpha'};
M_.param_names(3) = {'delta'};
M_.param_names_tex(3) = {'delta'};
M_.param_names_long(3) = {'delta'};
M_.param_names(4) = {'sigma'};
M_.param_names_tex(4) = {'sigma'};
M_.param_names_long(4) = {'sigma'};
M_.param_names(5) = {'phi'};
M_.param_names_tex(5) = {'phi'};
M_.param_names_long(5) = {'phi'};
M_.param_names(6) = {'kappaL'};
M_.param_names_tex(6) = {'kappaL'};
M_.param_names_long(6) = {'kappaL'};
M_.param_names(7) = {'epsilon'};
M_.param_names_tex(7) = {'epsilon'};
M_.param_names_long(7) = {'epsilon'};
M_.param_names(8) = {'eta'};
M_.param_names_tex(8) = {'eta'};
M_.param_names_long(8) = {'eta'};
M_.param_names(9) = {'gamma'};
M_.param_names_tex(9) = {'gamma'};
M_.param_names_long(9) = {'gamma'};
M_.param_names(10) = {'gammaz'};
M_.param_names_tex(10) = {'gammaz'};
M_.param_names_long(10) = {'gammaz'};
M_.param_names(11) = {'gss'};
M_.param_names_tex(11) = {'gss'};
M_.param_names_long(11) = {'gss'};
M_.param_names(12) = {'ass'};
M_.param_names_tex(12) = {'ass'};
M_.param_names_long(12) = {'ass'};
M_.param_names(13) = {'piss'};
M_.param_names_tex(13) = {'piss'};
M_.param_names_long(13) = {'piss'};
M_.param_names(14) = {'rss'};
M_.param_names_tex(14) = {'rss'};
M_.param_names_long(14) = {'rss'};
M_.param_names(15) = {'dss'};
M_.param_names_tex(15) = {'dss'};
M_.param_names_long(15) = {'dss'};
M_.param_names(16) = {'kappaI'};
M_.param_names_tex(16) = {'kappaI'};
M_.param_names_long(16) = {'kappaI'};
M_.param_names(17) = {'kappaP'};
M_.param_names_tex(17) = {'kappaP'};
M_.param_names_long(17) = {'kappaP'};
M_.param_names(18) = {'kappaD'};
M_.param_names_tex(18) = {'kappaD'};
M_.param_names_long(18) = {'kappaD'};
M_.param_names(19) = {'phipi'};
M_.param_names_tex(19) = {'phipi'};
M_.param_names_long(19) = {'phipi'};
M_.param_names(20) = {'phiy'};
M_.param_names_tex(20) = {'phiy'};
M_.param_names_long(20) = {'phiy'};
M_.param_names(21) = {'phie'};
M_.param_names_tex(21) = {'phie'};
M_.param_names_long(21) = {'phie'};
M_.param_names(22) = {'rhoa'};
M_.param_names_tex(22) = {'rhoa'};
M_.param_names_long(22) = {'rhoa'};
M_.param_names(23) = {'rhog'};
M_.param_names_tex(23) = {'rhog'};
M_.param_names_long(23) = {'rhog'};
M_.param_names(24) = {'rhom'};
M_.param_names_tex(24) = {'rhom'};
M_.param_names_long(24) = {'rhom'};
M_.param_names(25) = {'rhop'};
M_.param_names_tex(25) = {'rhop'};
M_.param_names_long(25) = {'rhop'};
M_.param_names(26) = {'rhoy'};
M_.param_names_tex(26) = {'rhoy'};
M_.param_names_long(26) = {'rhoy'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 34;
M_.param_nbr = 26;
M_.orig_endo_nbr = 34;
M_.aux_vars = [];
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.eq_nbr = 34;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 11 0;
 0 12 45;
 0 13 0;
 0 14 0;
 0 15 0;
 1 16 0;
 0 17 46;
 2 18 47;
 0 19 48;
 3 20 0;
 0 21 49;
 0 22 0;
 4 23 0;
 5 24 0;
 0 25 50;
 6 26 51;
 7 27 52;
 0 28 53;
 8 29 0;
 0 30 0;
 0 31 0;
 9 32 0;
 10 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;]';
M_.nstatic = 18;
M_.nfwrd   = 6;
M_.npred   = 7;
M_.nboth   = 3;
M_.nsfwrd   = 9;
M_.nspred   = 10;
M_.ndynamic   = 16;
M_.dynamic_tmp_nbr = [25; 7; 0; 0; ];
M_.equations_tags = {
  1 , 'name' , 'lambda' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , 'k' ;
  7 , 'name' , '7' ;
  8 , 'name' , 'yH' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , '12' ;
  13 , 'name' , 'gdp' ;
  14 , 'name' , '14' ;
  15 , 'name' , 'piH' ;
  16 , 'name' , '16' ;
  17 , 'name' , '17' ;
  18 , 'name' , '18' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'rz' ;
  21 , 'name' , 'rr' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'tb' ;
  25 , 'name' , 'xp' ;
  26 , 'name' , 'mp' ;
  27 , 'name' , 'tot' ;
  28 , 'name' , 'clog' ;
  29 , 'name' , 'wlog' ;
  30 , 'name' , 'hlog' ;
  31 , 'name' , 'klog' ;
  32 , 'name' , 'ilog' ;
  33 , 'name' , 'dlog' ;
  34 , 'name' , 'proof' ;
};
M_.mapping.c.eqidx = [1 12 13 26 28 34 ];
M_.mapping.rk.eqidx = [4 10 ];
M_.mapping.rr.eqidx = [21 ];
M_.mapping.w.eqidx = [5 9 29 ];
M_.mapping.h.eqidx = [1 5 8 9 30 ];
M_.mapping.k.eqidx = [6 8 10 31 ];
M_.mapping.q.eqidx = [4 7 ];
M_.mapping.i.eqidx = [6 7 12 13 26 32 34 ];
M_.mapping.lambda.eqidx = [1 2 3 4 7 11 ];
M_.mapping.r.eqidx = [2 16 21 ];
M_.mapping.pi.eqidx = [2 15 16 21 22 ];
M_.mapping.mc.eqidx = [9 10 11 ];
M_.mapping.g.eqidx = [12 13 18 34 ];
M_.mapping.a.eqidx = [8 17 ];
M_.mapping.piH.eqidx = [11 12 13 15 34 ];
M_.mapping.s.eqidx = [3 13 14 22 26 27 33 ];
M_.mapping.pH.eqidx = [11 12 13 14 15 23 25 27 34 ];
M_.mapping.yH.eqidx = [8 9 10 11 12 23 ];
M_.mapping.d.eqidx = [3 13 33 ];
M_.mapping.gdp.eqidx = [13 16 23 33 34 ];
M_.mapping.De.eqidx = [16 22 ];
M_.mapping.yz.eqidx = [12 19 25 ];
M_.mapping.rz.eqidx = [3 13 20 ];
M_.mapping.tb.eqidx = [24 34 ];
M_.mapping.xp.eqidx = [24 25 ];
M_.mapping.mp.eqidx = [24 26 ];
M_.mapping.tot.eqidx = [12 25 27 ];
M_.mapping.clog.eqidx = [28 ];
M_.mapping.wlog.eqidx = [29 ];
M_.mapping.hlog.eqidx = [30 ];
M_.mapping.klog.eqidx = [31 ];
M_.mapping.ilog.eqidx = [32 ];
M_.mapping.dlog.eqidx = [33 ];
M_.mapping.proof.eqidx = [34 ];
M_.mapping.va.eqidx = [17 ];
M_.mapping.vg.eqidx = [18 ];
M_.mapping.vm.eqidx = [16 ];
M_.mapping.vy.eqidx = [19 ];
M_.mapping.vp.eqidx = [20 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 3;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 17];
M_.block_structure.block(1).variable = [ 14];
M_.block_structure.block(1).is_linear = false;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(2).Simulation_Type = 3;
M_.block_structure.block(2).endo_nbr = 1;
M_.block_structure.block(2).mfs = 1;
M_.block_structure.block(2).equation = [ 18];
M_.block_structure.block(2).variable = [ 13];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 2;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(3).Simulation_Type = 3;
M_.block_structure.block(3).endo_nbr = 1;
M_.block_structure.block(3).mfs = 1;
M_.block_structure.block(3).equation = [ 19];
M_.block_structure.block(3).variable = [ 22];
M_.block_structure.block(3).is_linear = false;
M_.block_structure.block(3).NNZDerivatives = 2;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [0 1 ];
M_.block_structure.block(4).Simulation_Type = 1;
M_.block_structure.block(4).endo_nbr = 1;
M_.block_structure.block(4).mfs = 1;
M_.block_structure.block(4).equation = [ 20];
M_.block_structure.block(4).variable = [ 23];
M_.block_structure.block(4).is_linear = true;
M_.block_structure.block(4).NNZDerivatives = 2;
M_.block_structure.block(4).bytecode_jacob_cols_to_sparse = [1 2 ];
M_.block_structure.block(5).Simulation_Type = 8;
M_.block_structure.block(5).endo_nbr = 19;
M_.block_structure.block(5).mfs = 17;
M_.block_structure.block(5).equation = [ 27 23 5 8 9 13 16 6 2 3 7 14 22 10 11 12 15 1 4];
M_.block_structure.block(5).variable = [ 27 20 4 5 12 1 21 6 10 19 8 17 16 2 15 18 11 9 7];
M_.block_structure.block(5).is_linear = false;
M_.block_structure.block(5).NNZDerivatives = 83;
M_.block_structure.block(5).bytecode_jacob_cols_to_sparse = [6 7 8 9 10 11 0 0 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 43 44 45 46 47 48 49 50 51 ];
M_.block_structure.block(6).Simulation_Type = 1;
M_.block_structure.block(6).endo_nbr = 11;
M_.block_structure.block(6).mfs = 11;
M_.block_structure.block(6).equation = [ 33 32 31 26 25 24 34 30 29 28 21];
M_.block_structure.block(6).variable = [ 33 32 31 26 25 24 34 30 29 28 3];
M_.block_structure.block(6).is_linear = true;
M_.block_structure.block(6).NNZDerivatives = 14;
M_.block_structure.block(6).bytecode_jacob_cols_to_sparse = [12 13 14 15 16 17 18 19 20 21 22 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure.block(4).g1_sparse_rowval = int32([]);
M_.block_structure.block(4).g1_sparse_colval = int32([]);
M_.block_structure.block(4).g1_sparse_colptr = int32([]);
M_.block_structure.block(5).g1_sparse_rowval = int32([2 6 12 5 4 6 9 15 11 1 3 1 2 3 16 3 12 13 4 14 16 5 11 6 5 7 4 8 4 6 9 14 4 5 10 13 14 15 4 8 10 11 14 12 4 13 14 15 2 3 4 5 12 13 14 5 11 15 7 8 9 13 16 17 9 17 9 13 8 17 13 13 7 7 8 9 13 17 9 17 ]);
M_.block_structure.block(5).g1_sparse_colval = int32([6 6 6 7 8 9 9 10 11 18 18 19 19 19 19 20 20 20 21 21 21 22 22 23 24 24 25 25 26 26 26 26 27 27 27 27 27 27 28 28 28 28 28 29 30 30 30 30 31 31 31 31 31 31 31 32 32 32 33 33 33 33 33 33 34 34 43 44 45 46 47 48 49 50 50 50 50 50 51 51 ]);
M_.block_structure.block(5).g1_sparse_colptr = int32([1 1 1 1 1 1 4 5 6 8 9 10 10 10 10 10 10 10 12 16 19 22 24 25 27 29 33 39 44 45 49 56 59 65 67 67 67 67 67 67 67 67 67 68 69 70 71 72 73 74 79 81 ]);
M_.block_structure.block(6).g1_sparse_rowval = int32([]);
M_.block_structure.block(6).g1_sparse_colval = int32([]);
M_.block_structure.block(6).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 14 13 22 23 27 20 4 5 12 1 21 6 10 19 8 17 16 2 15 18 11 9 7 33 32 31 26 25 24 34 30 29 28 3];
M_.block_structure.equation_reordered = [ 17 18 19 20 27 23 5 8 9 13 16 6 2 3 7 14 22 10 11 12 15 1 4 33 32 31 26 25 24 34 30 29 28 21];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 6 6;
 6 8;
 7 8;
 8 6;
 10 6;
 13 19;
 13 23;
 15 17;
 16 10;
 17 14;
 18 13;
 19 22;
 20 23;
 22 16;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 5;
 1 9;
 2 9;
 2 10;
 3 9;
 3 16;
 3 19;
 3 23;
 4 7;
 4 9;
 5 4;
 5 5;
 6 6;
 6 8;
 7 7;
 7 8;
 7 9;
 8 5;
 8 14;
 8 18;
 9 4;
 9 5;
 9 12;
 9 18;
 10 2;
 10 12;
 10 18;
 11 9;
 11 12;
 11 15;
 11 17;
 11 18;
 12 1;
 12 8;
 12 13;
 12 15;
 12 17;
 12 18;
 12 22;
 12 27;
 13 1;
 13 8;
 13 13;
 13 15;
 13 16;
 13 17;
 13 19;
 13 20;
 14 16;
 14 17;
 15 11;
 15 15;
 15 17;
 16 10;
 16 11;
 16 20;
 16 21;
 17 14;
 18 13;
 19 22;
 20 23;
 21 3;
 21 10;
 22 11;
 22 16;
 22 21;
 23 17;
 23 18;
 23 20;
 24 24;
 24 25;
 24 26;
 25 17;
 25 22;
 25 25;
 25 27;
 26 1;
 26 8;
 26 16;
 26 26;
 27 16;
 27 17;
 27 27;
 28 1;
 28 28;
 29 4;
 29 29;
 30 5;
 30 30;
 31 6;
 31 31;
 32 8;
 32 32;
 33 16;
 33 19;
 33 20;
 33 33;
 34 1;
 34 8;
 34 13;
 34 15;
 34 17;
 34 20;
 34 24;
 34 34;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 9;
 2 11;
 3 9;
 3 16;
 4 2;
 4 7;
 4 9;
 7 7;
 7 8;
 7 9;
 11 9;
 11 15;
 11 17;
 11 18;
 21 11;
];
M_.block_structure.dyn_tmp_nbr = 22;
M_.state_var = [14 13 22 23 6 10 19 8 17 16 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(34, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(26, 1);
M_.endo_trends = struct('deflator', cell(34, 1), 'log_deflator', cell(34, 1), 'growth_factor', cell(34, 1), 'log_growth_factor', cell(34, 1));
M_.NNZDerivatives = [140; -1; -1; ];
M_.dynamic_g1_sparse_rowval = int32([6 8 10 6 7 16 18 17 22 15 13 19 13 20 1 12 13 26 28 34 10 21 5 9 29 1 5 8 9 30 6 31 4 7 6 7 12 13 26 32 34 1 2 3 4 7 11 2 16 21 15 16 22 9 10 11 12 13 18 34 8 17 11 12 13 15 34 3 13 14 22 26 27 33 11 12 13 14 15 23 25 27 34 8 9 10 11 12 23 3 13 33 13 16 23 33 34 16 22 12 19 25 3 20 24 34 24 25 24 26 12 25 27 28 29 30 31 32 33 34 4 4 7 7 2 3 4 7 11 2 21 11 3 11 11 17 18 16 19 20 ]);
M_.dynamic_g1_sparse_colval = int32([6 6 6 8 8 10 13 14 16 17 19 22 23 23 35 35 35 35 35 35 36 37 38 38 38 39 39 39 39 39 40 40 41 41 42 42 42 42 42 42 42 43 43 43 43 43 43 44 44 44 45 45 45 46 46 46 47 47 47 47 48 48 49 49 49 49 49 50 50 50 50 50 50 50 51 51 51 51 51 51 51 51 51 52 52 52 52 52 52 53 53 53 54 54 54 54 54 55 55 56 56 56 57 57 58 58 59 59 60 60 61 61 61 62 63 64 65 66 67 68 70 75 75 76 77 77 77 77 77 79 79 83 84 85 86 103 104 105 106 107 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 1 1 1 4 4 6 6 7 7 7 8 9 9 10 11 11 12 12 12 13 15 15 15 15 15 15 15 15 15 15 15 15 21 22 23 26 31 33 35 42 48 51 54 57 61 63 68 75 84 90 93 98 100 103 105 107 109 111 114 115 116 117 118 119 120 121 121 122 122 122 122 122 124 125 130 130 132 132 132 132 133 134 135 136 136 136 136 136 136 136 136 136 136 136 136 136 136 136 136 136 137 138 139 140 141 ]);
M_.lhs = {
'lambda'; 
'1'; 
'1'; 
'1'; 
'kappaL*h^phi'; 
'k'; 
'1'; 
'yH'; 
'yH*(1-alpha)*mc'; 
'yH*alpha*mc'; 
'piH*(piH-piss)'; 
'yH'; 
'gdp'; 
'1'; 
'piH'; 
'r/rss'; 
'log(a)'; 
'log(g)'; 
'log(yz)'; 
'rz'; 
'rr'; 
's/s(-1)'; 
'gdp'; 
'tb'; 
'xp'; 
'mp'; 
'tot'; 
'clog'; 
'wlog'; 
'hlog'; 
'klog'; 
'ilog'; 
'dlog'; 
'proof'; 
};
M_.static_tmp_nbr = [16; 4; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 7];
M_.block_structure_stat.block(1).variable = [ 7];
M_.block_structure_stat.block(2).Simulation_Type = 3;
M_.block_structure_stat.block(2).endo_nbr = 1;
M_.block_structure_stat.block(2).mfs = 1;
M_.block_structure_stat.block(2).equation = [ 17];
M_.block_structure_stat.block(2).variable = [ 14];
M_.block_structure_stat.block(3).Simulation_Type = 3;
M_.block_structure_stat.block(3).endo_nbr = 1;
M_.block_structure_stat.block(3).mfs = 1;
M_.block_structure_stat.block(3).equation = [ 18];
M_.block_structure_stat.block(3).variable = [ 13];
M_.block_structure_stat.block(4).Simulation_Type = 3;
M_.block_structure_stat.block(4).endo_nbr = 1;
M_.block_structure_stat.block(4).mfs = 1;
M_.block_structure_stat.block(4).equation = [ 19];
M_.block_structure_stat.block(4).variable = [ 22];
M_.block_structure_stat.block(5).Simulation_Type = 3;
M_.block_structure_stat.block(5).endo_nbr = 1;
M_.block_structure_stat.block(5).mfs = 1;
M_.block_structure_stat.block(5).equation = [ 20];
M_.block_structure_stat.block(5).variable = [ 23];
M_.block_structure_stat.block(6).Simulation_Type = 3;
M_.block_structure_stat.block(6).endo_nbr = 1;
M_.block_structure_stat.block(6).mfs = 1;
M_.block_structure_stat.block(6).equation = [ 3];
M_.block_structure_stat.block(6).variable = [ 19];
M_.block_structure_stat.block(7).Simulation_Type = 3;
M_.block_structure_stat.block(7).endo_nbr = 1;
M_.block_structure_stat.block(7).mfs = 1;
M_.block_structure_stat.block(7).equation = [ 4];
M_.block_structure_stat.block(7).variable = [ 2];
M_.block_structure_stat.block(8).Simulation_Type = 6;
M_.block_structure_stat.block(8).endo_nbr = 15;
M_.block_structure_stat.block(8).mfs = 15;
M_.block_structure_stat.block(8).equation = [ 8 9 10 11 12 13 14 15 16 2 6 23 5 27 22];
M_.block_structure_stat.block(8).variable = [ 6 5 18 12 27 1 16 15 21 10 8 20 4 17 11];
M_.block_structure_stat.block(9).Simulation_Type = 1;
M_.block_structure_stat.block(9).endo_nbr = 12;
M_.block_structure_stat.block(9).mfs = 12;
M_.block_structure_stat.block(9).equation = [ 26 32 31 25 24 33 34 30 29 28 21 1];
M_.block_structure_stat.block(9).variable = [ 26 32 31 25 24 33 34 30 29 28 3 9];
M_.block_structure_stat.variable_reordered = [ 7 14 13 22 23 19 2 6 5 18 12 27 1 16 15 21 10 8 20 4 17 11 26 32 31 25 24 33 34 30 29 28 3 9];
M_.block_structure_stat.equation_reordered = [ 7 17 18 19 20 3 4 8 9 10 11 12 13 14 15 16 2 6 23 5 27 22 26 32 31 25 24 33 34 30 29 28 21 1];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 5;
 1 9;
 2 10;
 2 11;
 3 19;
 3 23;
 4 2;
 4 7;
 5 4;
 5 5;
 6 6;
 6 8;
 7 7;
 8 5;
 8 6;
 8 14;
 8 18;
 9 4;
 9 5;
 9 12;
 9 18;
 10 2;
 10 6;
 10 12;
 10 18;
 11 12;
 11 15;
 11 17;
 12 1;
 12 8;
 12 13;
 12 15;
 12 17;
 12 18;
 12 22;
 12 27;
 13 1;
 13 8;
 13 13;
 13 15;
 13 16;
 13 17;
 13 19;
 13 20;
 13 23;
 14 16;
 14 17;
 15 11;
 15 15;
 16 10;
 16 11;
 16 20;
 16 21;
 17 14;
 18 13;
 19 22;
 20 23;
 21 3;
 21 10;
 21 11;
 22 11;
 22 21;
 23 17;
 23 18;
 23 20;
 24 24;
 24 25;
 24 26;
 25 17;
 25 22;
 25 25;
 25 27;
 26 1;
 26 8;
 26 16;
 26 26;
 27 16;
 27 17;
 27 27;
 28 1;
 28 28;
 29 4;
 29 29;
 30 5;
 30 30;
 31 6;
 31 31;
 32 8;
 32 32;
 33 16;
 33 19;
 33 20;
 33 33;
 34 1;
 34 8;
 34 13;
 34 15;
 34 17;
 34 20;
 34 24;
 34 34;
];
M_.block_structure_stat.tmp_nbr = 19;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(4).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(4).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(5).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(5).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(6).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(6).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(7).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(7).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(8).g1_sparse_rowval = int32([1 3 11 1 2 13 1 2 3 5 12 2 3 4 5 14 5 6 6 7 14 4 5 6 8 9 15 9 10 5 6 11 6 9 12 2 13 4 5 6 7 12 14 8 9 10 15 ]);
M_.block_structure_stat.block(8).g1_sparse_colval = int32([1 1 1 2 2 2 3 3 3 3 3 4 4 4 5 5 6 6 7 7 7 8 8 8 8 9 9 10 10 11 11 11 12 12 12 13 13 14 14 14 14 14 14 15 15 15 15 ]);
M_.block_structure_stat.block(8).g1_sparse_colptr = int32([1 4 7 12 15 17 19 22 26 28 30 33 36 38 44 48 ]);
M_.block_structure_stat.block(9).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(9).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(9).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([1 12 13 26 28 34 4 10 21 5 9 29 1 5 8 9 30 6 8 10 31 4 7 6 12 13 26 32 34 1 2 16 21 2 15 16 21 22 9 10 11 12 13 18 34 8 17 11 12 13 15 34 13 14 26 27 33 11 12 13 14 23 25 27 34 8 9 10 12 23 3 13 33 13 16 23 33 34 16 22 12 19 25 3 13 20 24 34 24 25 24 26 12 25 27 28 29 30 31 32 33 34 ]);
M_.static_g1_sparse_colval = int32([1 1 1 1 1 1 2 2 3 4 4 4 5 5 5 5 5 6 6 6 6 7 7 8 8 8 8 8 8 9 10 10 10 11 11 11 11 11 12 12 12 13 13 13 13 14 14 15 15 15 15 15 16 16 16 16 16 17 17 17 17 17 17 17 17 18 18 18 18 18 19 19 19 20 20 20 20 20 21 21 22 22 22 23 23 23 24 24 25 25 26 26 27 27 27 28 29 30 31 32 33 34 ]);
M_.static_g1_sparse_colptr = int32([1 7 9 10 13 18 22 24 30 31 34 39 42 46 48 53 58 66 71 74 79 81 84 87 89 91 93 96 97 98 99 100 101 102 103 ]);
close all;
warning off
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.33;
alpha = M_.params(2);
M_.params(7) = 6;
epsilon = M_.params(7);
M_.params(3) = 0.025;
delta = M_.params(3);
M_.params(4) = 1;
sigma = M_.params(4);
M_.params(5) = 1;
phi = M_.params(5);
M_.params(11) = 0.2;
gss = M_.params(11);
M_.params(8) = 1.5;
eta = M_.params(8);
M_.params(9) = 0.3;
gamma = M_.params(9);
D=0.25;                       
M_.params(13) = 1;
piss = M_.params(13);
M_.params(15) = 4*D;
dss = M_.params(15);
yHss=1;                        
pHss=1;                        
sss=1;                         
hss=1/3;                       
rrss=1/beta;                   
M_.params(14) = M_.params(13)/M_.params(1);
rss = M_.params(14);
qss=1;                         
rkss=1/beta-(1-delta);         
mcss=(epsilon-1)/epsilon;      
kss=alpha*mcss*yHss/rkss;            
wss=(1-alpha)*mcss*yHss/hss;         
M_.params(6) = wss/hss^M_.params(5);
kappaL = M_.params(6);
iss=delta*kss;                   
css=yHss-iss-gss-dss*(1/beta-1);       
lambdass=(css-kappaL/(1+phi)*hss^(1+phi))^(-sigma);   
M_.params(12) = yHss/(kss^M_.params(2)*hss^(1-M_.params(2)));
ass = M_.params(12);
M_.params(10) = 1-(1-M_.params(9))*(css+iss)-M_.params(11);
gammaz = M_.params(10);
M_.params(19) = 1.01;
phipi = M_.params(19);
M_.params(20) = 0.125;
phiy = M_.params(20);
M_.params(21) = 0;
phie = M_.params(21);
M_.params(16) = 0;
kappaI = M_.params(16);
M_.params(18) = 0.001;
kappaD = M_.params(18);
M_.params(22) = 0.9;
rhoa = M_.params(22);
M_.params(23) = 0.9;
rhog = M_.params(23);
M_.params(25) = 0.9;
rhop = M_.params(25);
M_.params(26) = 0.9;
rhoy = M_.params(26);
M_.params(24) = 0.8;
rhom = M_.params(24);
calvo=0.66;               
M_.params(17) = (M_.params(7)-1)*calvo/(M_.params(13)^2*(1-calvo)*(1-M_.params(1)*calvo));
kappaP = M_.params(17);
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.01)^2;
M_.Sigma_e(2, 2) = (0.01)^2;
M_.Sigma_e(3, 3) = (0.0025)^2;
M_.Sigma_e(4, 4) = (0.01)^2;
M_.Sigma_e(5, 5) = (0.0025)^2;
options_.hp_filter = 1600;
options_.irf = 40;
options_.noprint = true;
options_.order = 1;
options_.pruning = true;
var_list_ = {'gdp';'clog';'ilog';'klog';'q';'pi';'s';'dlog';'tb';'proof'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'open_economy_nk3ia_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
