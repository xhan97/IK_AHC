# IKAHC

Agglomerative hierarchical clustering (AHC) is one of the popular clustering approaches. AHC can generate a dendrogram that provides richer information and insights from a dataset than partitioning clustering. However, a major problem with existing distance-based AHC methods is: it fails to effectively identify adjacent clusters with varied densities, regardless of the cluster extraction methods applied to the resultant dendrogram. IKAHC aims to reveal the root cause of this issue and provide a solution by using a data-dependent kernel. We analyse the condition under which existing AHC methods fail to effectively extract clusters, and give the reason why the data-dependent kernel is an effective remedy. Our extensive empirical evaluation shows that the recently introduced Isolation Kernel produces a higher quality or purer dendrogram than distance, Gaussian Kernel and adaptive Gaussian Kernel in all the above mentioned AHC algorithms. Technical details and analysis of the algorithm can be found in the paper.

Han, X., Zhu, Y., Ting, K. M., and Li, G., “The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms]”, <i>Pattern Recognition</i>, 2023. [(pdf)](https://arxiv.org/pdf/2010.05473.pdf)


This repository contains the implementation of IK_AHC using MATLAB and Python, respectively.

## Demo
The comparison of AHC and IK_AHC is made available below ([(Figure)](https://github.com/xhan97/IK_AHC/tree/main/Matlab/demo/figures), [(demo.m)](https://github.com/xhan97/IK_AHC/tree/main/Matlab/demo)).

---
## Citations
---
If you use it for a scientific publication, please include a reference to this paper.

* Xin Han, Ye Zhu, Kai Ming Ting, and Gang Li, [The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms](https://arxiv.org/pdf/2010.05473.pdf), <i>Pattern Recognition</i>, 2023.

`BibTex` information:

```bibtex
@article{HZTLThe2023,
  author = {Han, Xin and Zhu, Ye and Ting, Kai Ming and Li, Gang},
  title = {The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms},
  journal = {Pattern Recognition},
  year = {2023},
  url = {https://arxiv.org/abs/2010.05473},
}
```


---
### License
---

BSD license
