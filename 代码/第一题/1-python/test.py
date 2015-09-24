import scipy.io
from time import time
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
from matplotlib.ticker import NullFormatter
from sklearn import manifold, datasets
from numpy import *

digits = datasets.load_digits(n_class=5) 
X = digits.data 
y = digits.target 
print X.shape 
n_img_per_row = 20
img = np.zeros((10* n_img_per_row, 10* n_img_per_row))
# foriin range(n_img_per_row): ix = 10* i+ 1
# forjin range(n_img_per_row): iy = 10* j+ 1
img[ix:ix + 8, iy:iy + 8]= X[i * n_img_per_row + j].reshape((8, 8))
plt.imshow(img, cmap=plt.cm.binary)
plt.title('A selection from the 64-dimensional digits dataset')
print("Computing t-SNE embedding")
tsne= manifold.TSNE(n_components=3, init='pca', random_state=0)
t0= time()
X_tsne= tsne.fit_transform(X)
plot_embedding_2d(X_tsne[:,0:2],"t-SNE 2D")
plot_embedding_3d(X_tsne,"t-SNE 3D (time %.2fs)"%(time() - t0))
def plot_embedding_3d(X, title=None):
	x_min, x_max = np.min(X,axis=0), np.max(X,axis=0) 
	X = (X - x_min) / (x_max - x_min) 
	fig = plt.figure() 
	ax = fig.add_subplot(1, 1, 1, projection='3d') 
	# for i  in range(X.shape[0]): 
	# 	ax.text(X[i, 0], X[i, 1], X[i,2],str(digits.target[i]), color=plt.cm.Set1(y[i] / 10.), fontdict={'weigh': 'bold', 'size': 9})
	# 	iftitle 
	# 	isnotNone: plt.title(title)