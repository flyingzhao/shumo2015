%function    [cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(X,nClusts,ppca_dim,ncentres,knn,power)

%%%%  spectral multi-manifold clustering (smmc) algorithm

%%%% Input
%  X            D by N data matrix
%  nClusts      number of clusters 
%  ppca_dim     dimension of principal component subspace in PPCA
%  ncentres     number of centres in the mixture model
%  knn          number of nearest neighbors
%  power        power of affinity 


labelcluster=find(cluster_labels==2);
x=data(:,labelcluster);

[cluster_labels1,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(x,2,2,20,10,10);

slabel=cluster_labels1;

subplot(121)
label1=find(slabel==1);

scatter3(x(1,label1),x(2,label1),x(3,label1),'r')
axis([-3 3 -3 3 -0.5 1.5])


subplot(122)
label2=find(slabel==2);
scatter3(x(1,label2),x(2,label2),x(3,label2),'g')
axis([-3 3 -3 3 -0.5 1.5])
