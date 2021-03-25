# library(ggplot)
library(gplots)
library(R.matlab)
filepath="D:\\matlab_project\\ANDCF\\attributednetwork\\feature.mat"
# filepath = file.choose()
mat=readMat(filepath)
d=mat$f
dim(d)
#cc <- rainbow(ncol(Data), start=0, end=0.3)
#hv<- heatmap.2(as.matrix(Data),col=colorRampPalette(c("green", "red"))(100),ColSideColors=cc,srtCol="none",
#        key=TRUE,symkey=FALSE,density.info="none",trace="none",dendrogram="none",cexRow=1)

hv<- heatmap.2(as.matrix(d),col=colorRampPalette(c("green", "red"))(6),srtCol="none",
               key=TRUE,symkey=FALSE,density.info="none",trace="none",dendrogram="none",cexRow=1)