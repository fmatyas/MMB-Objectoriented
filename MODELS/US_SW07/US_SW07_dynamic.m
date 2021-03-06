function [residual, g1, g2, g3] = US_SW07_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(71, 1);
T176 = 1/(params(44)/(1-params(44)));
T192 = 1/(1+params(75)*params(73));
T197 = params(73)^2;
T199 = T197*params(46);
T212 = params(49)/params(73);
T217 = (1-T212)/(params(48)*(1+T212));
T229 = (1-params(47))/(params(78)+1-params(47));
T245 = (params(48)-1)*params(87)/(params(48)*(1+T212));
T274 = 1/(1-T212);
T277 = T212/(1-T212);
T363 = 1/(1+params(75)*params(73)*params(55));
T378 = (1-params(56))*(1-params(75)*params(73)*params(56))/params(56)/(1+(params(52)-1)*params(37));
T387 = params(75)*params(73)/(1+params(75)*params(73));
T415 = (1-params(54))*(1-params(75)*params(73)*params(54))/((1+params(75)*params(73))*params(54))*1/(1+(params(58)-1)*params(35));
lhs =y(79);
rhs =y(67)*4;
residual(1)= lhs-rhs;
lhs =y(80);
rhs =y(77);
residual(2)= lhs-rhs;
lhs =y(81);
rhs =4*y(65);
residual(3)= lhs-rhs;
lhs =y(82);
rhs =y(63)-y(52);
residual(4)= lhs-rhs;
lhs =y(83);
rhs =y(63);
residual(5)= lhs-rhs;
lhs =y(84);
rhs =y(78);
residual(6)= lhs-rhs;
lhs =y(79);
rhs =params(32)*x(it_, 7)+params(31)*y(131)+params(30)*y(130)+params(29)*y(129)+params(28)*y(122)+params(27)*y(25)+params(26)*y(24)+params(25)*y(23)+params(24)*y(22)+y(83)*params(23)+params(22)*y(128)+params(21)*y(127)+params(20)*y(126)+params(19)*y(121)+params(18)*y(28)+params(17)*y(27)+params(16)*y(26)+params(15)*y(21)+y(82)*params(14)+params(13)*y(125)+params(12)*y(124)+params(11)*y(123)+params(10)*y(120)+params(6)*y(20)+y(81)*params(5)+params(1)*y(19)+params(2)*y(29)+params(3)*y(30)+params(4)*y(31)+params(7)*y(32)+params(8)*y(33)+params(9)*y(34);
residual(7)= lhs-rhs;
lhs =y(84);
rhs =params(34)*x(it_, 8);
residual(8)= lhs-rhs;
lhs =y(68);
rhs =params(43)*y(47)+(1-params(43))*y(54);
residual(9)= lhs-rhs;
lhs =y(46);
rhs =y(47)*T176;
residual(10)= lhs-rhs;
lhs =y(47);
rhs =y(54)+y(53)-y(48);
residual(11)= lhs-rhs;
lhs =y(48);
rhs =y(46)+y(17);
residual(12)= lhs-rhs;
lhs =y(51);
rhs =T192*(y(4)+params(75)*params(73)*y(111)+1/T199*y(49))+y(71);
residual(13)= lhs-rhs;
lhs =y(49);
rhs =(-y(55))+y(69)*1/T217+params(78)/(params(78)+1-params(47))*y(108)+T229*y(109);
residual(14)= lhs-rhs;
lhs =y(50);
rhs =y(69)+T212/(1+T212)*y(3)+1/(1+T212)*y(110)+T245*(y(53)-y(112))-y(55)*T217;
residual(15)= lhs-rhs;
lhs =y(52);
rhs =y(50)*params(85)+y(51)*params(84)+y(70)+y(46)*params(86);
residual(16)= lhs-rhs;
lhs =y(52);
rhs =params(52)*(y(68)+params(43)*y(48)+(1-params(43))*y(53));
residual(17)= lhs-rhs;
lhs =y(54);
rhs =y(53)*params(57)+y(50)*T274-y(3)*T277;
residual(18)= lhs-rhs;
lhs =y(75);
rhs =y(17)*(1-params(80))+y(51)*params(80)+y(71)*T199*params(80);
residual(19)= lhs-rhs;
lhs =y(56);
rhs =params(43)*y(58)+(1-params(43))*y(66)-y(68);
residual(20)= lhs-rhs;
lhs =y(57);
rhs =T176*y(58);
residual(21)= lhs-rhs;
lhs =y(58);
rhs =y(66)+y(64)-y(59);
residual(22)= lhs-rhs;
lhs =y(59);
rhs =y(57)+y(18);
residual(23)= lhs-rhs;
lhs =y(62);
rhs =y(71)+T192*(y(6)+params(75)*params(73)*y(116)+1/T199*y(60));
residual(24)= lhs-rhs;
lhs =y(60);
rhs =y(69)*1/T217+(-y(67))+y(118)+params(78)/(params(78)+1-params(47))*y(113)+T229*y(114);
residual(25)= lhs-rhs;
lhs =y(61);
rhs =y(69)+T212/(1+T212)*y(5)+1/(1+T212)*y(115)+T245*(y(64)-y(117))-T217*(y(67)-y(118));
residual(26)= lhs-rhs;
lhs =y(63);
rhs =y(70)+params(85)*y(61)+params(84)*y(62)+params(86)*y(57);
residual(27)= lhs-rhs;
lhs =y(63);
rhs =params(52)*(y(68)+params(43)*y(59)+(1-params(43))*y(64));
residual(28)= lhs-rhs;
lhs =y(65);
rhs =T363*(params(75)*params(73)*y(118)+params(55)*y(8)+y(56)*T378)+y(73);
residual(29)= lhs-rhs;
lhs =y(66);
rhs =T192*y(9)+T387*y(119)+y(8)*params(53)/(1+params(75)*params(73))-y(65)*(1+params(75)*params(73)*params(53))/(1+params(75)*params(73))+y(118)*T387+T415*(params(57)*y(64)+T274*y(61)-T277*y(5)-y(66))+y(74);
residual(30)= lhs-rhs;
lhs =y(68);
rhs =params(64)*y(10)+x(it_, 1);
residual(31)= lhs-rhs;
lhs =y(69);
rhs =params(65)*y(11)+x(it_, 2);
residual(32)= lhs-rhs;
lhs =y(70);
rhs =y(78)+params(66)*y(12)+x(it_, 1)*params(36);
residual(33)= lhs-rhs;
lhs =y(71);
rhs =params(67)*y(13)+x(it_, 3);
residual(34)= lhs-rhs;
lhs =y(72);
rhs =params(68)*y(14)+x(it_, 4);
residual(35)= lhs-rhs;
lhs =y(73);
rhs =params(69)*y(15)+y(45)-params(42)*y(2);
residual(36)= lhs-rhs;
lhs =y(45);
rhs =x(it_, 5);
residual(37)= lhs-rhs;
lhs =y(74);
rhs =params(70)*y(16)+y(44)-params(41)*y(1);
residual(38)= lhs-rhs;
lhs =y(44);
rhs =x(it_, 6);
residual(39)= lhs-rhs;
lhs =y(76);
rhs =(1-params(80))*y(18)+params(80)*y(62)+y(71)*params(46)*T197*params(80);
residual(40)= lhs-rhs;
lhs =y(40);
rhs =y(63)-y(7)+params(71);
residual(41)= lhs-rhs;
lhs =y(41);
rhs =params(71)+y(61)-y(5);
residual(42)= lhs-rhs;
lhs =y(42);
rhs =params(71)+y(62)-y(6);
residual(43)= lhs-rhs;
lhs =y(43);
rhs =params(71)+y(66)-y(9);
residual(44)= lhs-rhs;
lhs =y(39);
rhs =y(65)+params(39);
residual(45)= lhs-rhs;
lhs =y(77);
rhs =y(65)+y(8)+y(35)+y(36);
residual(46)= lhs-rhs;
lhs =y(38);
rhs =y(67)+params(89);
residual(47)= lhs-rhs;
lhs =y(37);
rhs =y(64)+params(38);
residual(48)= lhs-rhs;
lhs =y(85);
rhs =y(120);
residual(49)= lhs-rhs;
lhs =y(86);
rhs =y(123);
residual(50)= lhs-rhs;
lhs =y(87);
rhs =y(124);
residual(51)= lhs-rhs;
lhs =y(88);
rhs =y(121);
residual(52)= lhs-rhs;
lhs =y(89);
rhs =y(126);
residual(53)= lhs-rhs;
lhs =y(90);
rhs =y(127);
residual(54)= lhs-rhs;
lhs =y(91);
rhs =y(122);
residual(55)= lhs-rhs;
lhs =y(92);
rhs =y(129);
residual(56)= lhs-rhs;
lhs =y(93);
rhs =y(130);
residual(57)= lhs-rhs;
lhs =y(94);
rhs =y(22);
residual(58)= lhs-rhs;
lhs =y(95);
rhs =y(23);
residual(59)= lhs-rhs;
lhs =y(96);
rhs =y(24);
residual(60)= lhs-rhs;
lhs =y(97);
rhs =y(21);
residual(61)= lhs-rhs;
lhs =y(98);
rhs =y(26);
residual(62)= lhs-rhs;
lhs =y(99);
rhs =y(27);
residual(63)= lhs-rhs;
lhs =y(100);
rhs =y(19);
residual(64)= lhs-rhs;
lhs =y(101);
rhs =y(29);
residual(65)= lhs-rhs;
lhs =y(102);
rhs =y(30);
residual(66)= lhs-rhs;
lhs =y(103);
rhs =y(20);
residual(67)= lhs-rhs;
lhs =y(104);
rhs =y(32);
residual(68)= lhs-rhs;
lhs =y(105);
rhs =y(33);
residual(69)= lhs-rhs;
lhs =y(106);
rhs =y(8);
residual(70)= lhs-rhs;
lhs =y(107);
rhs =y(35);
residual(71)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(71, 139);

  %
  % Jacobian matrix
  %

T3 = (-1);
  g1(1,67)=(-4);
  g1(1,79)=1;
  g1(2,77)=T3;
  g1(2,80)=1;
  g1(3,65)=(-4);
  g1(3,81)=1;
  g1(4,52)=1;
  g1(4,63)=T3;
  g1(4,82)=1;
  g1(5,63)=T3;
  g1(5,83)=1;
  g1(6,78)=T3;
  g1(6,84)=1;
  g1(7,19)=(-params(1));
  g1(7,79)=1;
  g1(7,20)=(-params(6));
  g1(7,81)=(-params(5));
  g1(7,120)=(-params(10));
  g1(7,21)=(-params(15));
  g1(7,82)=(-params(14));
  g1(7,121)=(-params(19));
  g1(7,22)=(-params(24));
  g1(7,83)=(-params(23));
  g1(7,122)=(-params(28));
  g1(7,138)=(-params(32));
  g1(7,123)=(-params(11));
  g1(7,124)=(-params(12));
  g1(7,125)=(-params(13));
  g1(7,126)=(-params(20));
  g1(7,127)=(-params(21));
  g1(7,128)=(-params(22));
  g1(7,129)=(-params(29));
  g1(7,130)=(-params(30));
  g1(7,131)=(-params(31));
  g1(7,23)=(-params(25));
  g1(7,24)=(-params(26));
  g1(7,25)=(-params(27));
  g1(7,26)=(-params(16));
  g1(7,27)=(-params(17));
  g1(7,28)=(-params(18));
  g1(7,29)=(-params(2));
  g1(7,30)=(-params(3));
  g1(7,31)=(-params(4));
  g1(7,32)=(-params(7));
  g1(7,33)=(-params(8));
  g1(7,34)=(-params(9));
  g1(8,84)=1;
  g1(8,139)=(-params(34));
  g1(9,47)=(-params(43));
  g1(9,54)=(-(1-params(43)));
  g1(9,68)=1;
  g1(10,46)=1;
  g1(10,47)=(-T176);
  g1(11,47)=1;
  g1(11,48)=1;
  g1(11,53)=T3;
  g1(11,54)=T3;
  g1(12,46)=T3;
  g1(12,48)=1;
  g1(12,17)=T3;
  g1(13,49)=(-(T192*1/T199));
  g1(13,4)=(-T192);
  g1(13,51)=1;
  g1(13,111)=(-(params(75)*params(73)*T192));
  g1(13,71)=T3;
  g1(14,108)=(-(params(78)/(params(78)+1-params(47))));
  g1(14,49)=1;
  g1(14,109)=(-T229);
  g1(14,55)=1;
  g1(14,69)=(-(1/T217));
  g1(15,3)=(-(T212/(1+T212)));
  g1(15,50)=1;
  g1(15,110)=(-(1/(1+T212)));
  g1(15,53)=(-T245);
  g1(15,112)=T245;
  g1(15,55)=T217;
  g1(15,69)=T3;
  g1(16,46)=(-params(86));
  g1(16,50)=(-params(85));
  g1(16,51)=(-params(84));
  g1(16,52)=1;
  g1(16,70)=T3;
  g1(17,48)=(-(params(43)*params(52)));
  g1(17,52)=1;
  g1(17,53)=(-((1-params(43))*params(52)));
  g1(17,68)=(-params(52));
  g1(18,3)=T277;
  g1(18,50)=(-T274);
  g1(18,53)=(-params(57));
  g1(18,54)=1;
  g1(19,51)=(-params(80));
  g1(19,71)=(-(T199*params(80)));
  g1(19,17)=(-(1-params(80)));
  g1(19,75)=1;
  g1(20,56)=1;
  g1(20,58)=(-params(43));
  g1(20,66)=(-(1-params(43)));
  g1(20,68)=1;
  g1(21,57)=1;
  g1(21,58)=(-T176);
  g1(22,58)=1;
  g1(22,59)=1;
  g1(22,64)=T3;
  g1(22,66)=T3;
  g1(23,57)=T3;
  g1(23,59)=1;
  g1(23,18)=T3;
  g1(24,60)=(-(T192*1/T199));
  g1(24,6)=(-T192);
  g1(24,62)=1;
  g1(24,116)=(-(params(75)*params(73)*T192));
  g1(24,71)=T3;
  g1(25,113)=(-(params(78)/(params(78)+1-params(47))));
  g1(25,60)=1;
  g1(25,114)=(-T229);
  g1(25,118)=T3;
  g1(25,67)=1;
  g1(25,69)=(-(1/T217));
  g1(26,5)=(-(T212/(1+T212)));
  g1(26,61)=1;
  g1(26,115)=(-(1/(1+T212)));
  g1(26,64)=(-T245);
  g1(26,117)=T245;
  g1(26,118)=(-T217);
  g1(26,67)=T217;
  g1(26,69)=T3;
  g1(27,57)=(-params(86));
  g1(27,61)=(-params(85));
  g1(27,62)=(-params(84));
  g1(27,63)=1;
  g1(27,70)=T3;
  g1(28,59)=(-(params(43)*params(52)));
  g1(28,63)=1;
  g1(28,64)=(-((1-params(43))*params(52)));
  g1(28,68)=(-params(52));
  g1(29,56)=(-(T363*T378));
  g1(29,8)=(-(params(55)*T363));
  g1(29,65)=1;
  g1(29,118)=(-(params(75)*params(73)*T363));
  g1(29,73)=T3;
  g1(30,5)=(-(T415*(-T277)));
  g1(30,61)=(-(T274*T415));
  g1(30,64)=(-(params(57)*T415));
  g1(30,8)=(-(params(53)/(1+params(75)*params(73))));
  g1(30,65)=(1+params(75)*params(73)*params(53))/(1+params(75)*params(73));
  g1(30,118)=(-T387);
  g1(30,9)=(-T192);
  g1(30,66)=1-(-T415);
  g1(30,119)=(-T387);
  g1(30,74)=T3;
  g1(31,10)=(-params(64));
  g1(31,68)=1;
  g1(31,132)=T3;
  g1(32,11)=(-params(65));
  g1(32,69)=1;
  g1(32,133)=T3;
  g1(33,12)=(-params(66));
  g1(33,70)=1;
  g1(33,78)=T3;
  g1(33,132)=(-params(36));
  g1(34,13)=(-params(67));
  g1(34,71)=1;
  g1(34,134)=T3;
  g1(35,14)=(-params(68));
  g1(35,72)=1;
  g1(35,135)=T3;
  g1(36,2)=params(42);
  g1(36,45)=T3;
  g1(36,15)=(-params(69));
  g1(36,73)=1;
  g1(37,45)=1;
  g1(37,136)=T3;
  g1(38,1)=params(41);
  g1(38,44)=T3;
  g1(38,16)=(-params(70));
  g1(38,74)=1;
  g1(39,44)=1;
  g1(39,137)=T3;
  g1(40,62)=(-params(80));
  g1(40,71)=(-(params(46)*T197*params(80)));
  g1(40,18)=(-(1-params(80)));
  g1(40,76)=1;
  g1(41,40)=1;
  g1(41,7)=1;
  g1(41,63)=T3;
  g1(42,41)=1;
  g1(42,5)=1;
  g1(42,61)=T3;
  g1(43,42)=1;
  g1(43,6)=1;
  g1(43,62)=T3;
  g1(44,43)=1;
  g1(44,9)=1;
  g1(44,66)=T3;
  g1(45,39)=1;
  g1(45,65)=T3;
  g1(46,8)=T3;
  g1(46,65)=T3;
  g1(46,77)=1;
  g1(46,35)=T3;
  g1(46,36)=T3;
  g1(47,38)=1;
  g1(47,67)=T3;
  g1(48,37)=1;
  g1(48,64)=T3;
  g1(49,120)=T3;
  g1(49,85)=1;
  g1(50,123)=T3;
  g1(50,86)=1;
  g1(51,124)=T3;
  g1(51,87)=1;
  g1(52,121)=T3;
  g1(52,88)=1;
  g1(53,126)=T3;
  g1(53,89)=1;
  g1(54,127)=T3;
  g1(54,90)=1;
  g1(55,122)=T3;
  g1(55,91)=1;
  g1(56,129)=T3;
  g1(56,92)=1;
  g1(57,130)=T3;
  g1(57,93)=1;
  g1(58,22)=T3;
  g1(58,94)=1;
  g1(59,23)=T3;
  g1(59,95)=1;
  g1(60,24)=T3;
  g1(60,96)=1;
  g1(61,21)=T3;
  g1(61,97)=1;
  g1(62,26)=T3;
  g1(62,98)=1;
  g1(63,27)=T3;
  g1(63,99)=1;
  g1(64,19)=T3;
  g1(64,100)=1;
  g1(65,29)=T3;
  g1(65,101)=1;
  g1(66,30)=T3;
  g1(66,102)=1;
  g1(67,20)=T3;
  g1(67,103)=1;
  g1(68,32)=T3;
  g1(68,104)=1;
  g1(69,33)=T3;
  g1(69,105)=1;
  g1(70,8)=T3;
  g1(70,106)=1;
  g1(71,35)=T3;
  g1(71,107)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],71,19321);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],71,2685619);
end
end
end
end
