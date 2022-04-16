# IK_AHC

IK-AHC is a novel hierarchical clustering algorithm. It uses a
data-dependent kernel called Isolation Kernel to measure the the similarity between clusters. Technical details and analysis about the algorithm can be found in the paper.

Han, X., Zhu, Y., Ting, K. M., and Li, G., “The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms]”, <i>arXiv e-prints</i>, 2020. [(pdf)](https://arxiv.org/pdf/2010.05473.pdf)


---
### Citations
---

If you use it for a scientific publication, please include a reference to this paper.

* Xin Han, Ye Zhu, Kai Ming Ting, and Gang Li, [The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms](https://arxiv.org/pdf/2010.05473.pdf), <i>arXiv e-prints</i>, 2020.

`BibTex` information:

```bibtex
@article{HZTLThe2020,
  author = {Han, Xin and Zhu, Ye and Ting, Kai Ming and Li, Gang},
  title = {The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms},
  publisher = {arXiv},
  year = {2020},
  url = {https://arxiv.org/abs/2010.05473},
  copyright = {arXiv.org perpetual, non-exclusive license}
}
```

The related dataset for above paper can be found at [TULIP Lab Open-Data](https://github.com/tulip-lab/open-data):

<!-- * [`IK-AHC2022`](https://github.com/tulip-lab/open-data/tree/master/Macau2018): Tourism Demand Forcasting Data for Macau from January 2011 to August 2018 -->

---
###  Requirements
---

* Matlab R2021a

---
### Setup
---

Add the preject permanently to the Matlab path:

```matlab
  run setup.m
```

---
### Run Evaluation
---

Run test on  all real data set:

```matlab
  run eva/eva_khc.m
```

---
### Notes
---

- Most of the program running time is used to calculate dendrogram purity.
- You'll need firstly run the setup script before run the evaluation script.

---
### License
---

BSD license
