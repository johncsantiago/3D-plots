library(scatterplot3d)
library(plot3D)
library("plot3Drgl")
library(data.table)
countdata <- read.csv(url("https://raw.githubusercontent.com/johncsantiago/3D-plots/master/countdata.csv"),row.names=1)
groups=read.csv(url("https://raw.githubusercontent.com/johncsantiago/3D-plots/master/metadata.csv"),row.names=1)
x=1
y=2
z=3

##plot 3D plot as a 2D image (not interactive)
scatter3D(cpm2[,x],cpm2[,y],cpm2[,z],cex=.3,xlim=c(0,4000),ylim=c(0,4000),zlim=c(0,4000),xlab=groups[x,6],ylab=groups[y,6],zlab=groups[z,6])
segments3D(0,0,0,4000,4000,4000,add=TRUE)

##plot 3D plot as interactive in new window
plotrgl()

##rglwidget() will now put the 3D interactive plot in the viewer window 
rglwidget(width=500,height=500)

## From here itcan be exported from there as an HTML file through the "Export" drop down tab then "Save as Web Page"