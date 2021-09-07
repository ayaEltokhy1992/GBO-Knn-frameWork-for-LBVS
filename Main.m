%-------------------------------------------------------------------------%
% GBO - KNN for features selections                                       %
%                                                                         %
%  Programmer: Aya Eltokhy                                                %
%                                                                         %
%  E-Mail: aya.eltokhy@gmail.com                                          %
%-------------------------------------------------------------------------%


%---Inputs-----------------------------------------------------------------
% feat:   features
% label:  labelling
% N:      Number of gases
% T:      Maximum number of iterations
% Nc:     Number of gas types
% *Note: k-value of KNN & hold-out setting can be modified in jFitnessFunction.m
%---Outputs----------------------------------------------------------------
% sFeat:  Selected features
% Sf:     Selected feature index
% Nf:     Number of selected features
% curve:  Convergence curve
%--------------------------------------------------------------------------
% 
% 
% 
% %% Gradient based  Optimization
 clc, clear, close; 
% Benchmark data set 
load ionosphere.mat; 
% % Parameter setting
 N=10; T=100; 
% % Henry Gas Solubility Optimization
 [sFeat2,Sf2,Nf2,curve2]=jGBO(feat,label,N,T);
% Plot convergence curve
figure(); plot(1:T,curve2); xlabel('Number of iterations');
ylabel('Fitness Value'); title('GBO'); grid on;













