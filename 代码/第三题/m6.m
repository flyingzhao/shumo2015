%3a

clc
clear
load 'D:\data\data3\3a.mat'

subplot(221)
scatter(data(1,:),data(2,:),8)
title('Original Data')

x=data;
%x,2,1,4,60,10
%x,2,1,4,120,10
[cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(x,2,1,4,150,10);

clabel=cluster_labels;

subplot(222)
label=find(clabel==1);
scatter(x(1,label),x(2,label),8,'r')
axis([40 220 50 250])
title('First Class')

subplot(223)
labelcluster=find(clabel==2);
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
axis([40 220 50 250])
title('Second Class')

subplot(224)
scatter(x(1,label),x(2,label),8,'r')
hold on
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
axis([40 220 50 250])
title('Classifed Data')