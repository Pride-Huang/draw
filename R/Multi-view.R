dev.new()
BLCA<-c(97,78,56,58,59,81)/136
BRCA<-c(87,74,73,57,87,81)/136
HNSC<-c(92,59,51,43,75,81)/136
KIRC<-c(95,62,45,55,61,81)/136
LUAD<-c(92,61,46,52,67,81)/136
LUSC<-c(84,64,46,46,71,81)/137

data<-cbind(BLCA,BRCA,HNSC,KIRC,LUAD,LUSC)

color=c('#FF0000','#90ed7d','#327d32','#191970','#8085e8','#FFC125')#rainbow(6)

barplot(data,beside=T,col=color,ylab="Specificity",ylim = c(0.2,0.8),xpd=FALSE)
legend(2,0.16,legend=c('NMF-DEC','SP','SCI','CDE','NMF','GNMF'),ncol=3,cex=1.2,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)

dev.new()
BLCA<-c(75,47,44,31,34,34)/136
BRCA<-c(74,46,57,30,55,34)/136
HNSC<-c(73,30,38,32,51,34)/136
KIRC<-c(78,51,26,34,40,34)/136
LUAD<-c(71,41,37,31,47,34)/136
LUSC<-c(67,33,33,29,43,34)/137
data<-cbind(BLCA,BRCA,HNSC,KIRC,LUAD,LUSC)

color=c('#FF0000','#90ed7d','#327d32','#191970','#8085e8','#FFC125')#rainbow(6)

barplot(data,beside=T,col=color,ylab="Specificity",ylim = c(0,0.6),xpd=FALSE)
legend(2,-0.05,legend=c('NMF-DEC','SP','SCI','CDE','NMF','GNMF'),ncol=3,cex=1.2,col=color,pch=16,xpd=TRUE,bty="n",pt.cex=1.5)
dev.off()
