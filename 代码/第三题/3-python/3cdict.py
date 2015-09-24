import scipy.io
from numpy import *
import matplotlib.pyplot as plt
from sklearn import cluster
from mpl_toolkits.mplot3d import Axes3D

from sklearn.decomposition import SparseCoder

mat = scipy.io.loadmat('3c1.mat')['CMat']
print mat.shape
Y=mat
# # print Y
# print Y.shape

print "relation"


relation=scipy.io.loadmat('3c.mat')['data']
print relation

plt.matshow(relation, cmap=plt.cm.Blues)

# relation=abs(x)

spectral = cluster.SpectralClustering(n_clusters=2,
                                          eigen_solver='arpack',
                                          affinity="nearest_neighbors")
y_pred = spectral.fit_predict(relation)
print y_pred



colors = array([x for x in 'bgrcmykbgrcmykbgrcmykbgrcmyk'])
colors = hstack([colors] * 20)
fig = plt.figure()
ax = fig.add_subplot(111)
plt.scatter(Y[:, 0], Y[:, 1],c=colors[y_pred[:]])
plt.title("2a")
plt.axis('tight')
plt.show()


