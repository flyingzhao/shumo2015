%function    [cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(X,nClusts,ppca_dim,ncentres,knn,power)

%%%%  spectral multi-manifold clustering (smmc) algorithm

%%%% Input
%  X            D by N data matrix
%  nClusts      number of clusters 
%  ppca_dim     dimension of principal component subspace in PPCA
%  ncentres     number of centres in the mixture model
%  knn          number of nearest neighbors
%  power        power of affinity 


clc
clear
load 'D:\data\data2\2c.mat'

x=data
% subplot(223)
figure(1)
scatter(x(1,:),x(2,:))
title('2c Original Data')

[cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(x,2,1,2,20,8)

clabel=cluster_labels

% subplot(221)
figure(2)
label=find(clabel==1)
scatter(x(1,label),x(2,label),8,'r')
title('2c FirstClass')

% subplot(222)
figure(3)
labelcluster=find(clabel==2)
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
title('2c SecondClass')

% subplot(224)
figure(4)
scatter(x(1,label),x(2,label),8,'r')
hold on
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
title('2c Classfied Data')

