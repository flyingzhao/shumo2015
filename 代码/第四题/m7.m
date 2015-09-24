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
load 'D:\data\data4\4a.mat'

%smmc(data,3,2,20,1000,20);
%2 2 10 1000 20
[cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(data,3,2,20,300,20);

clabel=cluster_labels;

subplot(131)
label=find(clabel==1);
scatter3(data(1,label),data(2,label),data(3,label),'r')

subplot(132)
labelcluster=find(clabel==2);
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),'g')

subplot(133)
labelcluster=find(clabel==3);
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),'b')