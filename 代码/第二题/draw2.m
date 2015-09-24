
clabel=cluster_labels

% subplot(131)
figure(1)
label=find(clabel==1)
% scatter(data(2,label),data(3,label),'r')
scatter3(data(1,label),data(2,label),data(3,label),8,'r')
axis([-1 1 -1 1 -1 1])

title('line1')

figure(2)
% subplot(132)
label1=find(clabel==2)
scatter3(data(1,label1),data(2,label1),data(3,label1),8,'g')
% scatter(data(2,labelcluster),data(3,labelcluster))
axis([-1 1 -1 1 -1 1])
title('plane')

figure(3)
% subplot(133)
labelcluster=find(clabel==3)
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),8,'b')
% scatter(data(2,labelcluster),data(3,labelcluster),'b')
title('line2')
axis([-1 1 -1 1 -1 1])

figure(4)
scatter3(data(1,label),data(2,label),data(3,label),8,'r')
hold on
scatter3(data(1,label1),data(2,label1),data(3,label1),8,'g')
hold on
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),8,'b')
title('Classified Data')
axis([-1 1 -1 1 -1 1])

