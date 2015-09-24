
clc
clear
load 'D:\data\data2\2d.mat'

% subplot(221)
figure(1)
scatter(data(1,:),data(2,:),8)
title('2d Original Data')

x=data
[cluster_labels,ppca_label,mse,time_mppca,time_smmc,time_sc,W] = smmc(x,2,1,40,20,20);

clabel=cluster_labels

% subplot(222)
figure(2)
label=find(clabel==1)
scatter(x(1,label),x(2,label),8,'r')
title('2d FirstClass')

% subplot(223)
figure(3)
labelcluster=find(clabel==2)
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
title('2d SecondClass')

% subplot(224)
figure(4)
scatter(x(1,label),x(2,label),8,'r')
hold on
scatter(x(1,labelcluster),x(2,labelcluster),8,'g')
title('2d Classfied Data')
