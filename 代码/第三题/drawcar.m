i=1
class=x
label1=find(class==3);
scatter(data(i*2-1,label1),data(i*2,label1),8,'r')
hold on

label2=find(class==1);
scatter(data(i*2-1,label2),data(i*2,label2),8,'g')
hold on

label3=find(class==2);
scatter(data(i*2-1,label3),data(i*2,label3),8,'b')

%%%% Input
%  X            D by N data matrix
%  nClusts      number of clusters 
%  ppca_dim     dimension of principal component subspace in PPCA
%  ncentres     number of centres in the mixture model
%  knn          number of nearest neighbors
%  power        power of affinity 

%  [cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(data,3,1,20,20,8)
