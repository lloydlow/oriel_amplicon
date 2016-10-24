#Oriel amplicon seq
#following mothur.1476848626.logfile
setwd("/Users/lloyd/Documents/lloyd_2016/Research/Oriel/tabanidComparison2")
rarefaction <- read.delim("stability.an.groups.rarefaction",stringsAsFactors =FALSE)

library(RColorBrewer)
all.col <- brewer.pal(12, "Paired")
all.col <- all.col[c(1:10,12)]
selc <- seq(2,32,by = 3)
all.names <- names(rarefaction)[selc]
#pal <- colorRampPalette(c("red", "green"))
#all.col <- pal(11)

png(file="OTU.png",width=7.5*300,height=5*300,res = 300)
plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Adiu_O36, ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col=all.col[1], font.lab=3)
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Adiu_O37, type="l", col=all.col[2])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O42, type="l", col=all.col[3])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O43, type="l", col=all.col[4])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O44, type="l", col=all.col[5])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O32, type="l", col=all.col[6])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O33, type="l", col=all.col[7])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O34, type="l", col=all.col[8])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O39, type="l", col=all.col[9])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O40, type="l", col=all.col[10])
points(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O41, type="l", col=all.col[11])
legend(x=120000, y=160, all.names, all.col, cex = 0.75, bty ="n")
dev.off()

# par(mfrow=c(4,3))
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Adiu_O36,main="X0.03.Adiu_O36", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Adiu_O37,main="X0.03.Adiu_O37", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O42,main="X0.03.Tcon_O42", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O43,main="X0.03.Tcon_O43", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tcon_O44,main="X0.03.Tcon_O44", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O32,main="X0.03.Tpar_O32", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O33,main="X0.03.Tpar_O33", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Tpar_O34,main="X0.03.Tpar_O34", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O39,main="X0.03.Ttae_O39", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O40,main="X0.03.Ttae_O40", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O41,main="X0.03.Ttae_O41", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)
# plot(x=rarefaction$numsampled, y=rarefaction$X0.03.Ttae_O41,main="X0.03.dummy", ylim=c(0,200),xlab="Number of Tags Sampled",ylab="OTUs", type="l", col="black", font.lab=3)

#stopped here on 22/10/2016
heatmap <- read.delim("stability.an.0.03.subsample.shared",stringsAsFactors =FALSE)
