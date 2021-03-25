library(xlsx)
filepath="C:\\Users\\hp\\Documents\\TCBB\\labels\\Bio.xlsx"


KEGG<-read.xlsx(filepath,sheetName = "KEGG",header = T,row.names=1)
GO<-read.xlsx(filepath,sheetName = "GO",header = T,row.names=1)
NMI<-read.xlsx(filepath,sheetName = "NMI",header = T,row.names=1)

KEGG<-as.matrix(t(KEGG))
GO<-as.matrix(t(GO))
NMI<-as.matrix(t(NMI))

color=c('#FF0000','#FF69b4','#D8bFD8','#800080','#90ed7d','#327d32','#191970','#8085e8','#FFC125')

dev.new()
#pdf('C:\\Users\\hp\\Documents\\TCBB\\labels\\KEGG.pdf')
# par(mfrow=c(2,1))
barplot(KEGG,ylim=c(0,0.6),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
legend(0,-0.05,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI','KM_A','KM_P','KM_AP'),ncol=6,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
# barplot(GO,ylim=c(0,1.0),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
# legend(0,-0.10,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI','KM_A','KM_P','KM_AP'),ncol=6,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
#dev.off()
dev.new()
barplot(NMI,ylim=c(0,0.5),space=c(0,1.2), beside=TRUE,col=color,xpd=FALSE)
legend(0,-0.03,c('NMF-DEC','NMF','GNMF','SP','CDE','SCI','KM_A','KM_P','KM_AP'),ncol=5,cex=1.1,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)