% clc, clear all, close all
D = 62; %Dimension of ambient space
n = 2; %Number of subspaces
d1 = 3; d2 = 3; %d1 and d2: dimension of subspace 1 and 2
N1 = 99; N2 = 99; %N1 and N2: number of points in subspace 1 and 2
% X1 = randn(D,d1) * randn(d1,N1); %Generating N1 points in a d1 dim. subspace
% X2 = randn(D,d2) * randn(d2,N2); %Generating N2 points in a d2 dim. subspace
X = data;
s = [1*ones(1,N1) 2*ones(1,N2)]; %Generating the ground-truth for evaluating clustering results
r = 0; %Enter the projection dimension e.g. r = d*n, enter r = 0 to not project
Cst = 0; %Enter 1 to use the additional affine constraint sum(c) == 1
OptM = 'Lasso'; %OptM can be {'L1Perfect','L1Noise','Lasso','L1ED'}
lambda = 0.001; %Regularization parameter in 'Lasso' or the noise level for 'L1Noise'
K = max(d1,d2); %Number of top coefficients to build the similarity graph, enter K=0 for using the whole coefficients
if Cst == 1
    K = max(d1,d2) + 1; %For affine subspaces, the number of coefficients to pick is dimension + 1 
end


Xp = DataProjection(X,r,'NormalProj');
CMat = SparseCoefRecovery(Xp,Cst,OptM,lambda);
[CMatC,sc,OutlierIndx,Fail] = OutlierDetection(CMat,s);
if (Fail == 0)
    CKSym = BuildAdjacency(CMatC,K);
    [Grps , SingVals, LapKernel] = SpectralClustering(CKSym,n);
    Missrate = Misclassification(Grps,sc);
    save Lasso_001.mat CMat CKSym Missrate SingVals LapKernel Fail
else
    save Lasso_001.mat CMat Fail
end