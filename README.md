# IK_AHC

IK-AHC is a novel hierarchical clustering algorithm. It uses a
data-dependent kernel called Isolation Kernel to measure the the similarity between clusters. Technical details and analysis about the algorithm can be found in the paper.

Han, X., Zhu, Y., Ting, K. M., and Li, G., “The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms]”, <i>arXiv e-prints</i>, 2020. [(pdf)](https://arxiv.org/pdf/2010.05473.pdf)


## Setup

Add the preject permanently to Matlab path:

    run setup.m

## Run Evaluation

Run test on  all real data set:

    run eva_khc.m

## Notes

- Most of the program running time is used to calculate dendrogram purity.
- You'll need firstly run the setup script before run the evaluation script.


## Citing

If you have used this codebase in a scientific publication and wish to cite it, please use the following publication (Bibtex format):

```bibtex
@ARTICLE{2020arXiv201005473H,
    author = {{Han}, Xin and {Zhu}, Ye and {Ting}, Kai Ming and {Li}, Gang},
        title = "{The Impact of Isolation Kernel on Agglomerative Hierarchical Clustering Algorithms}",
    journal = {arXiv e-prints},
    keywords = {Computer Science - Machine Learning},
        year = 2020,
        month = oct,
        eid = {arXiv:2010.05473},
        pages = {arXiv:2010.05473},
    archivePrefix = {arXiv},
    eprint = {2010.05473},
    primaryClass = {cs.LG},
    adsurl = {https://ui.adsabs.harvard.edu/abs/2020arXiv201005473H},
    adsnote = {Provided by the SAO/NASA Astrophysics Data System}
}
```

## License

BSD license
