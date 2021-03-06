library('propOverlap')
data <- read.csv(argv[0],sep="\t", header=TRUE)
data_p <- as.matrix(data)
l <- data_p[1:532,2:69]
GeneExpression <- apply(as.matrix(l), 2, as.numeric)
c <- read.csv(argv[1],sep="\t", header=TRUE)
Class <- apply(as.matrix(c), 2, as.numeric) 
Selection       <- Sel.Features(as.matrix(GeneExpression), Class)
attributes(Selection)
(Candidates      <- Selection$Features)   #return the selected features
(Covered.observations <- Selection$Covered.Obs) #return the covered observations by the selection
## select a specific number of features
Selection.k      <- Sel.Features(GeneExpression, Class, K=10, Verbose=TRUE)
Selection.k$Features
Selection.k$nMin.Features   #return the size of the minimum subset of genes
Selection.k$Measures        #return the selected features'information'

Score <- POS(GeneExpression, CI.emprical(GeneExpression,Class), Class)
Score[1:5]      #show the proportional overlapping scores for the first 5 features
summary(Score)
#with k = 10

Selection.k$Measures

#extract Features name from genes file
g <- read.csv(argv[2],sep="\t", header=TRUE)
f <- Selection.k$Features
g[f[1:10],]
