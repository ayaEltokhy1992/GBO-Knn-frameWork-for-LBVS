%-------------------------------------------------------------------------%
%  Henry Gas Solubility Optimization (HGSO) source codes demo version     %
%                                                                         %
%  Programmer: Jingwei Too                                                %
%                                                                         %
%  E-Mail: jamesjames868@gmail.com                                        %
%-------------------------------------------------------------------------%


%---Inputs-----------------------------------------------------------------
% feat:   features
% label:  labelling
% N:      Number of gases
% T:      Maximum number of iterations
% Nc:     Number of gas types
% K:      Constant
% alpha:  Influence of other gas
% beta:   Constant
% L1:     Initial parameter
% L2:     Initial parameter
% L3:     Initial parameter
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
% %% Henry Gas Solubility Optimization
 clc, clear, close; 
% Benchmark data set 
load ionosphere.mat; 
% load DataSet1.mat; 
% load DataSet2.mat; 
% % Parameter setting
 N=10; T=100; Nc=3; K=1; alpha=1; beta=1; L1=5E-3; L2=100; L3=1E-2;
% % Henry Gas Solubility Optimization
 [sFeat1,Sf1,Nf1,curve1]=jHGSO(feat,label,N,T,Nc,K,alpha,beta,L1,L2,L3);
 [sFeat2,Sf2,Nf2,curve2]=jGBO(feat,label,N,T);
% Plot convergence curve
figure(); plot(1:T,curve1); xlabel('Number of iterations');
ylabel('Fitness Value'); title('HG'); grid on;

figure(); plot(1:T,curve2); xlabel('Number of iterations');
ylabel('Fitness Value'); title('GBO'); grid on;













%aya edit
% label = csvread('label.CSV');
% feat = csvread('feat2.CSV');
% save('DataSet2.mat');

