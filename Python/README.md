# IK_AHC

IK-AHC is a novel hierarchical clustering algorithm. It uses a
data-dependent kernel called Isolation Kernel to measure the similarity between clusters. Technical details and analysis about the algorithm can be found in the paper.

Han, X., Zhu, Y., Ting, K. M., and Li, G., “The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms]”, <i>Pattern Recognition</i>, 2023. [(pdf)](https://arxiv.org/pdf/2010.05473.pdf)


---
### Citations
---

If you use it for a scientific publication, please include a reference to this paper.

* Xin Han, Ye Zhu, Kai Ming Ting, and Gang Li, [The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms](https://arxiv.org/pdf/2010.05473.pdf), <i>Pattern Recognition</i>, 2023.

`BibTex` information:

```bibtex
@article{HZTLThe2020,
  author = {Han, Xin and Zhu, Ye and Ting, Kai Ming and Li, Gang},
  title = {The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms},
  journal = {Pattern Recognition},
  year = {2023},
  url = {https://arxiv.org/abs/2010.05473},
}
```


---
###  Requirements
---

* Python 3.8+

---
### Setup
---

install requirements:

```shell
  pip install -r requirements.txt
```

---
### How to use IsoKAHC
---

```python
from sklearn.preprocessing import MinMaxScaler
from sklearn.datasets import load_wine
from IsoKAHC import IsoKAHC
from utils import metrics

X, y = load_wine()
scaler = MinMaxScaler()
X = scaler.fit_transform(X)

clf = IsoKAHC(n_estimators=200, max_samples=2, method='single')
dendrogram  = clf.fit_transform(X)
den_purity = metrics.dendrogram_purity(dendrogram, y)
```

---
### Notes
---

- Most of the program running time is used to calculate dendrogram purity.

---
### License
---

BSD license
