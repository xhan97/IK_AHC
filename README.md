# IK_AHC

IK-AHC is a novel hierarchical clustering algorithm. It uses a
data-dependent kernel called Isolation Kernel to measure the the similarity between clusters. Technical details and analysis about the algorithm can be found in paper.

## Setup

Add the preject permanently to Matlab path:

    run setup.m

## Run Evaluation

Run test on  all real data set:

    run eva_khc.m

## Notes

- Most of the program running time is used to calculate dendrogram purity.
- You'll need firstly run the setup script before run the evaluation script.

## License

BSD license
