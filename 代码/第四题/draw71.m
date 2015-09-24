figure(1)
label1=find(slabel==1);

scatter3(x(1,label1),x(2,label1),x(3,label1),'r')
axis([-3 3 -3 3 -0.5 1.5])
title('上表面')

figure(2)
label2=find(slabel==2);
scatter3(x(1,label2),x(2,label2),x(3,label2),'g')
axis([-3 3 -3 3 -0.5 1.5])
title('下表面')