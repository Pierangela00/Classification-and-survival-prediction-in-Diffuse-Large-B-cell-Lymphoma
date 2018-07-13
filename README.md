# Classification-and-survival-prediction-in-Diffuse-Large-B-cell-Lymphoma
# Description
In this work we propose a novel approach for class prediction from gene expression data and survival analysis of tumor and immune subtype; we are interested in finding subset of genes which have a significant impact on survival probability. In particular, our approach relies on the definition of two groups based on the amount of certain member cell types composing the genes, and on a Kaplan-Meier survival analysis that aims at understanding which group has more chances to survive.
Genes can be identified by taking into account the fact that, if the presence of some set of genes changes, the composition of the groups changes accordingly, and hence the survival probability. In our approach, we make use of three machine-learning techniques in order to identify gene candidates: Prediction Analysis for Microarrays (PAM), Classification to Nearest Centroids (ClaNC) and Proportional Overlapping Score (POS).

# Prediction Analysis for Microarrays
Run as `Rscript PAM/PAM_genes.R dataset_path`. This script returns a list of the most relevant genes according to our analysis. 

utils scripts credits to https://github.com/cran/pamr/tree/master/R

# Classification to Nearest Centroids (ClaNC) 
