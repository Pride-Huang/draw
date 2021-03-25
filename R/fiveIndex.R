library(xlsx)
filepath="C:\\Users\\hp\\Documents\\TCBB\\labels\\five_WEBKB.xlsx"


ARI<-read.xlsx(filepath,sheetName = "ARI",header = T,row.names=1)
NMI<-read.xlsx(filepath,sheetName = "NMI",header = T,row.names=1)
ACC<-read.xlsx(filepath,sheetName = "ACC",header = T,row.names=1)
F1<-read.xlsx(filepath,sheetName = "F1",header = T,row.names=1)

ARI<-as.matrix(t(ARI))
NMI<-as.matrix(t(NMI))
ACC<-as.matrix(t(ACC))
F1<-as.matrix(t(F1))
#color=c('#FF0000','#FF69b4','#D8bFD8','#800080','#90ed7d','#327d32','#191970','#8085e8','#FFC125')
color=c('#FF0000','#90ed7d','#327d32','#191970','#8085e8','#FFC125')

pdf('C:\\Users\\hp\\Documents\\TCBB\\labels\\ARI.pdf')
barplot(ARI,ylim=c(0,0.4),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
#legend(0.1,-0.02,legend=c('NMFDEC','Kmeans_A','Kmeans_P','Kmeans_AP','NMF','GNMF','SP','CDE','SCI'),col=color)
legend(0.1,-0.03,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI'),ncol=3,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
dev.off()

pdf('C:\\Users\\hp\\Documents\\TCBB\\labels\\NMIs.pdf')
barplot(NMI,ylim=c(0,0.4),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
legend(0.1,-0.03,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI'),ncol=3,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
dev.off()

pdf('C:\\Users\\hp\\Documents\\TCBB\\labels\\ACC.pdf')
barplot(ACC,ylim=c(0,0.7),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
legend(0.1,-0.06,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI'),ncol=3,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
dev.off()

pdf('C:\\Users\\hp\\Documents\\TCBB\\labels\\F1.pdf')
barplot(F1,ylim=c(0,0.7),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
legend(0.1,-0.06,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI'),ncol=3,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
dev.off()

