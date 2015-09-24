import scipy.io
from numpy import *
from sklearn import cluster
import matplotlib.pyplot as plt

from sklearn.decomposition import SparseCoder

mat = scipy.io.loadmat('3b_sparse_3.mat')['CMat']

relationMatrix=(abs(mat)+abs(mat.T))/2


plt.matshow(relationMatrix, cmap=plt.cm.Blues)

spectral = cluster.SpectralClustering(n_clusters=3,
                                          eigen_solver='arpack',
                                          affinity="nearest_neighbors")
y_pred = spectral.fit_predict(relationMatrix)

print y_pred
save('3b2.record',y_pred)

plt.show()

