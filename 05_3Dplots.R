###########################################################################################
#                           3D TRAIT SPACE OF EACH HABITAT                                #
###########################################################################################

#code by Jan Divisek (2018)

require(plot3D)
library(vegan)

col.3D <- c("deepskyblue1","green", "yellow1", "red2")

#windows(7,4.8)
cairo_pdf("3Dplot1.pdf", width=7, height = 4.8)
#tiff("3Dplot1.tif", width = 7, height = 4.8, units = "in", res=600, compression = "lzw")
layout(matrix(data=1:6, ncol=3, nrow = 2, byrow = TRUE))
par(mar=c(0,0.3,0.3,0))

###Grassland and heathland vegetation----------------------------------------------------------

sel <- which(trait.s$T == 1)

#assemble data
traitT.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitT.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitT.3D <- traitT.3D[complete.cases(traitT.3D),]

#remove casuals
traitT.3D <- traitT.3D[which(traitT.3D$INVASION.STATUS != "casual"),]
nrow(traitT.3D)

#plot species to 3D
perspbox(traitT.3D$SLA, traitT.3D$`Germinule weight`, traitT.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Grassland and heathland vegetation", line=-0.8, adj=0.35)

scatter3D(traitT.3D$SLA, traitT.3D$`Germinule weight`, traitT.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitT.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Ruderal and weed vegetation----------------------------------------------------------

sel <- which(trait.s$X == 1)

#assemble data
traitX.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitX.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitX.3D <- traitX.3D[complete.cases(traitX.3D),]

#remove casuals
traitX.3D <- traitX.3D[which(traitX.3D$INVASION.STATUS != "casual"),]
nrow(traitX.3D)

#plot species to 3D
perspbox(traitX.3D$SLA, traitX.3D$`Germinule weight`, traitX.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Ruderal and weed vegetation", line=-0.8, adj=0.35)

scatter3D(traitX.3D$SLA, traitX.3D$`Germinule weight`, traitX.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitX.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Rock and scree vegetation----------------------------------------------------------

sel <- which(trait.s$S == 1)

#assemble data
traitS.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitS.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitS.3D <- traitS.3D[complete.cases(traitS.3D),]

#remove casuals
traitS.3D <- traitS.3D[which(traitS.3D$INVASION.STATUS != "casual"),]
nrow(traitS.3D)

#plot species to 3D
perspbox(traitS.3D$SLA, traitS.3D$`Germinule weight`, traitS.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Rock and scree vegetation", line=-0.8, adj=0.35)

scatter3D(traitS.3D$SLA, traitS.3D$`Germinule weight`, traitS.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitS.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Wetland vegetation----------------------------------------------------------

sel <- which(trait.s$M == 1)

#assemble data
traitM.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitM.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitM.3D <- traitM.3D[complete.cases(traitM.3D),]

#remove casuals
traitM.3D <- traitM.3D[which(traitM.3D$INVASION.STATUS != "casual"),]
nrow(traitM.3D)

#plot species to 3D
perspbox(traitM.3D$SLA, traitM.3D$`Germinule weight`, traitM.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Wetland vegetation", line=-0.8, adj=0.35)

scatter3D(traitM.3D$SLA, traitM.3D$`Germinule weight`, traitM.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitM.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Scrub vegetation----------------------------------------------------------

sel <- which(trait.s$K == 1)

#assemble data
traitK.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitK.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitK.3D <- traitK.3D[complete.cases(traitK.3D),]

#remove casuals
traitK.3D <- traitK.3D[which(traitK.3D$INVASION.STATUS != "casual"),]
nrow(traitK.3D)

#plot species to 3D
perspbox(traitK.3D$SLA, traitK.3D$`Germinule weight`, traitK.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Scrub vegetation", line=-0.8, adj=0.35)

scatter3D(traitK.3D$SLA, traitK.3D$`Germinule weight`, traitK.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitK.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Forest vegetation----------------------------------------------------------

sel <- which(trait.s$L == 1)

#assemble data
traitL.3D <- trait.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitL.3D)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitL.3D <- traitL.3D[complete.cases(traitL.3D),]

#remove casuals
traitL.3D <- traitL.3D[which(traitL.3D$INVASION.STATUS != "casual"),]
nrow(traitL.3D)

#plot species to 3D
perspbox(traitL.3D$SLA, traitL.3D$`Germinule weight`, traitL.3D$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Forest vegetation", line=-0.8, adj=0.35)

scatter3D(traitL.3D$SLA, traitL.3D$`Germinule weight`, traitL.3D$`Plant height`, 
          bty = "n", bg=col.3D[traitL.3D$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

dev.off()

########################################################################################
###3D PLOTS FOR DATASET WITH IMPUTED TRAITS---------------------------------------------
#NAs replaced by average for genus, family...

#windows(7,5)
cairo_pdf("3Dplot2.pdf", width=7, height = 4.8)
#tiff("3Dplot2.tif", width = 7, height = 4.8, units = "in", res=400, compression = "lzw")
layout(matrix(data=1:6, ncol=3, nrow = 2, byrow = TRUE))
par(mar=c(0,0.3,0.3,0))

###Grassland and heathland vegetation----------------------------------------------------------

sel <- which(trait.imp.s$T == 1) 

#assemble data
traitT.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitT.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitT.3D.imp <- traitT.3D.imp[complete.cases(traitT.3D.imp),]

#remove casuals
traitT.3D.imp <- traitT.3D.imp[ which(traitT.3D.imp$INVASION.STATUS != "casual"), ]
nrow(traitT.3D.imp)

#plot species to 3D
perspbox(traitT.3D.imp$SLA, traitT.3D.imp$`Germinule weight`, traitT.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Grassland and heathland vegetation", line=-0.8, adj=0.35)

scatter3D(traitT.3D.imp$SLA, traitT.3D.imp$`Germinule weight`, traitT.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitT.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Ruderal and weed vegetation----------------------------------------------------------

sel <- which(trait.imp.s$X == 1)

#assemble data
traitX.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitX.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitX.3D.imp <- traitX.3D.imp[complete.cases(traitX.3D.imp),]

#remove casuals
traitX.3D.imp <- traitX.3D.imp[which(traitX.3D.imp$INVASION.STATUS != "casual"),]
nrow(traitX.3D.imp)

#plot species to 3D
perspbox(traitX.3D.imp$SLA, traitX.3D.imp$`Germinule weight`, traitX.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Ruderal and weed vegetation", line=-0.8, adj=0.35)

scatter3D(traitX.3D.imp$SLA, traitX.3D.imp$`Germinule weight`, traitX.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitX.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Rock and scree vegetation----------------------------------------------------------

sel <- which(trait.imp.s$S == 1)

#assemble data
traitS.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitS.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitS.3D.imp <- traitS.3D.imp[complete.cases(traitS.3D.imp),]

#remove casuals
traitS.3D.imp <- traitS.3D.imp[which(traitS.3D.imp$INVASION.STATUS != "casual"),]
nrow(traitS.3D.imp)

#plot species to 3D
perspbox(traitS.3D.imp$SLA, traitS.3D.imp$`Germinule weight`, traitS.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Rock and scree vegetation", line=-0.8, adj=0.35)

scatter3D(traitS.3D.imp$SLA, traitS.3D.imp$`Germinule weight`, traitS.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitS.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Wetland vegetation----------------------------------------------------------

sel <- which(trait.imp.s$M == 1)

#assemble data
traitM.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitM.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitM.3D.imp <- traitM.3D.imp[complete.cases(traitM.3D.imp),]

#remove casuals
traitM.3D.imp <- traitM.3D.imp[which(traitM.3D.imp$INVASION.STATUS != "casual"),]
nrow(traitM.3D.imp)

#plot species to 3D
perspbox(traitM.3D.imp$SLA, traitM.3D.imp$`Germinule weight`, traitM.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Wetland vegetation", line=-0.8, adj=0.35)

scatter3D(traitM.3D.imp$SLA, traitM.3D.imp$`Germinule weight`, traitM.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitM.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Scrub vegetation----------------------------------------------------------

sel <- which(trait.imp.s$K == 1 )

#assemble data
traitK.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitK.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitK.3D.imp <- traitK.3D.imp[complete.cases(traitK.3D.imp),]

#remove casuals
traitK.3D.imp <- traitK.3D.imp[which(traitK.3D.imp$INVASION.STATUS != "casual"),]
nrow(traitK.3D.imp)

#plot species to 3D
perspbox(traitK.3D.imp$SLA, traitK.3D.imp$`Germinule weight`, traitK.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Scrub vegetation", line=-0.8, adj=0.35)

scatter3D(traitK.3D.imp$SLA, traitK.3D.imp$`Germinule weight`, traitK.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitK.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Forest vegetation----------------------------------------------------------

sel <- which(trait.imp.s$L == 1)

#assemble data
traitL.3D.imp <- trait.imp.s[sel, c("HEIGHT.MAX", "sla.avg.mm2mg.", "Germinule", "INVASION.STATUS")]
colnames(traitL.3D.imp)[1:3] <- c("Plant height", "SLA", "Germinule weight")

#remove species with missing taits
traitL.3D.imp <- traitL.3D.imp[complete.cases(traitL.3D.imp),]

#remove casuals
traitL.3D.imp <- traitL.3D.imp[which(traitL.3D.imp$INVASION.STATUS != "casual"),]
nrow(traitL.3D.imp)

#plot species to 3D
perspbox(traitL.3D.imp$SLA, traitL.3D.imp$`Germinule weight`, traitL.3D.imp$`Plant height`, bty="u", 
         col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Forest vegetation", line=-0.8, adj=0.35)

scatter3D(traitL.3D.imp$SLA, traitL.3D.imp$`Germinule weight`, traitL.3D.imp$`Plant height`, 
          bty = "n", bg=col.3D[traitL.3D.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

dev.off()

###########################################################################################
#                    3D PLOTS FOR PHYLOGENETICALLY CORRECTED DATA                         #
###########################################################################################

##Phylogenetic information was filtered out using Moran's eigenvectors
##Trait values are residuals from linear regression of log10(trait) and selected Moran's eigenvectors

#windows(7,5)
cairo_pdf("3Dplot3.pdf", width=7, height = 4.8)
#tiff("3Dplot3.tif", width = 7, height = 4.8, units = "in", res=400, compression = "lzw")
layout(matrix(data=1:6, ncol=3, nrow = 2, byrow = TRUE))
par(mar=c(0,0.3,0.3,0))

###Grassland and heathland vegetation ---------------------------------------------------
#plot species to 3D
traitT.3Dcor <- trait.3Dcor[which(trait.3Dcor$T == 1), ]

perspbox(traitT.3Dcor$sla.avg.mm2mg., traitT.3Dcor$Germinule, traitT.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Grassland and heathland vegetation", line=-0.8, adj=0.35)

scatter3D(traitT.3Dcor$sla.avg.mm2mg., traitT.3Dcor$Germinule, traitT.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitT.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)


###Ruderal and weed vegetation ----------------------------------------------------------
#plot species to 3D
traitX.3Dcor <- trait.3Dcor[which(trait.3Dcor$X == 1), ]

perspbox(traitX.3Dcor$sla.avg.mm2mg., traitX.3Dcor$Germinule, traitX.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Ruderal and weed vegetation", line=-0.8, adj=0.35)

scatter3D(traitX.3Dcor$sla.avg.mm2mg., traitX.3Dcor$Germinule, traitX.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitX.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Rock and scree vegetation ----------------------------------------------------------
#plot species to 3D
traitS.3Dcor <- trait.3Dcor[which(trait.3Dcor$S == 1), ]

perspbox(traitS.3Dcor$sla.avg.mm2mg., traitS.3Dcor$Germinule, traitS.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Rock and scree vegetation", line=-0.8, adj=0.35)

scatter3D(traitS.3Dcor$sla.avg.mm2mg., traitS.3Dcor$Germinule, traitS.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitS.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Wetland vegetation ----------------------------------------------------------
#plot species to 3D
traitM.3Dcor <- trait.3Dcor[which(trait.3Dcor$M == 1), ]

perspbox(traitM.3Dcor$sla.avg.mm2mg., traitM.3Dcor$Germinule, traitM.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Wetland vegetation", line=-0.8, adj=0.35)

scatter3D(traitM.3Dcor$sla.avg.mm2mg., traitM.3Dcor$Germinule, traitM.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitM.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Scrub vegetation ----------------------------------------------------------
#plot species to 3D
traitK.3Dcor <- trait.3Dcor[which(trait.3Dcor$K == 1), ]

perspbox(traitK.3Dcor$sla.avg.mm2mg., traitK.3Dcor$Germinule, traitK.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Scrub vegetation", line=-0.8, adj=0.35)

scatter3D(traitK.3Dcor$sla.avg.mm2mg., traitK.3Dcor$Germinule, traitK.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitK.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)


###Forest vegetation----------------------------------------------------------
#plot species to 3D
traitL.3Dcor <- trait.3Dcor[which(trait.3Dcor$L == 1), ]

perspbox(traitL.3Dcor$sla.avg.mm2mg., traitL.3Dcor$Germinule, traitL.3Dcor$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, cex=1.3, lwd=0.5)
title("Forest vegetation", line=-0.8, adj=0.35)

scatter3D(traitL.3Dcor$sla.avg.mm2mg., traitL.3Dcor$Germinule, traitL.3Dcor$HEIGHT.MAX,
          bty = "n", bg=col.3D[traitL.3Dcor$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

dev.off()

###3D PLOTS FOR DATASET WITH IMPUTED AND CORRECTED SPECIES TRAITS-------------

##Phylogenetic information was filtered out using Moran's eigenvectors
##Trait values are residuals from linear regression of log(trait) and selected Moran's eigenvectors

#windows(7,5)
cairo_pdf("3Dplot4.pdf", width=7, height = 4.8)
#tiff("3Dplot4.tif", width = 7, height = 4.8, units = "in", res=400, compression = "lzw")
layout(matrix(data=1:6, ncol=3, nrow = 2, byrow = TRUE))
par(mar=c(0,0.3,0.3,0))

###Grassland and heathland vegetation ----------------------------------------------------------
#plot species to 3D
traitT.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$T == 1),]
perspbox(traitT.3Dcor.imp$sla.avg.mm2mg., traitT.3Dcor.imp$Germinule, traitT.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Grassland and heathland vegetation", line=-0.8, adj=0.35)

scatter3D(traitT.3Dcor.imp$sla.avg.mm2mg., traitT.3Dcor.imp$Germinule, traitT.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitT.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Ruderal and weed vegetation ----------------------------------------------------------
#plot species to 3D
traitX.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$X == 1),]
perspbox(traitX.3Dcor.imp$sla.avg.mm2mg., traitX.3Dcor.imp$Germinule, traitX.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Ruderal and weed vegetation", line=-0.8, adj=0.35)

scatter3D(traitX.3Dcor.imp$sla.avg.mm2mg., traitX.3Dcor.imp$Germinule, traitX.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitX.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Rock and scree vegetation ----------------------------------------------------------
#plot species to 3D
traitS.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$S == 1),]
perspbox(traitS.3Dcor.imp$sla.avg.mm2mg., traitS.3Dcor.imp$Germinule, traitS.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Rock and scree vegetation", line=-0.8, adj=0.35)

scatter3D(traitS.3Dcor.imp$sla.avg.mm2mg., traitS.3Dcor.imp$Germinule, traitS.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitS.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Wetland vegetation ----------------------------------------------------------
#plot species to 3D
traitM.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$M == 1),]
perspbox(traitM.3Dcor.imp$sla.avg.mm2mg., traitM.3Dcor.imp$Germinule, traitM.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Wetland vegetation", line=-0.8, adj=0.35)

scatter3D(traitM.3Dcor.imp$sla.avg.mm2mg., traitM.3Dcor.imp$Germinule, traitM.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitM.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Scrub vegetation ----------------------------------------------------------
#plot species to 3D
traitK.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$K == 1),]
perspbox(traitK.3Dcor.imp$sla.avg.mm2mg., traitK.3Dcor.imp$Germinule, traitK.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Scrub vegetation", line=-0.8, adj=0.35)

scatter3D(traitK.3Dcor.imp$sla.avg.mm2mg., traitK.3Dcor.imp$Germinule, traitK.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitK.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

###Forest vegetation----------------------------------------------------------
#plot species to 3D
traitL.3Dcor.imp <- trait.3Dcor.imp[which(trait.3Dcor.imp$L == 1),]
perspbox(traitL.3Dcor.imp$sla.avg.mm2mg., traitL.3Dcor.imp$Germinule, traitL.3Dcor.imp$HEIGHT.MAX, 
         bty="u", col.grid = "white", col.panel = "gray90", col.axis="white", lwd.grid = 0.5, lwd.panel = 0.5,
         xlab = "SLA", ylab="Seed weight", zlab="Plant height",
         cex.lab=0.8, lwd=0.5)
title("Forest vegetation", line=-0.8, adj=0.35)

scatter3D(traitL.3Dcor.imp$sla.avg.mm2mg., traitL.3Dcor.imp$Germinule, traitL.3Dcor.imp$HEIGHT.MAX, 
          bty = "n", bg=col.3D[traitL.3Dcor.imp$INVASION.STATUS], pch=21, col="black", cex=0.8, add = T, lwd=0.1)

dev.off()
