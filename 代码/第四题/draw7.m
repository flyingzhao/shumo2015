clabel=cluster_labels;


figure(1)
label=find(clabel==1);
scatter3(data(1,label),data(2,label),data(3,label),'r')
title('Բ̨�±���')
axis([-2 2 -2 2 -0.5 1.5])

figure(2)
labelcluster=find(clabel==2);
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),'g')
title('Բ̨�ϱ���')
axis([-2 2 -2 2 -0.5 1.5])

figure(3)
labelcluster=find(clabel==3);
scatter3(data(1,labelcluster),data(2,labelcluster),data(3,labelcluster),'b')
title('Բ̨����')

axis([-2 2 -2 2 -0.5 1.5])