data<- read.csv("creating images.csv",header=T)
str(data)
m.data<- as.matrix(data)
m.data[m.data=="Off"]<- 0
m.data[m.data=="Yes"]<- 1
m.data2<- apply(m.data, c(1,2), function(x) as.integer(x))
nr<- dim(m.data2)[1]
nc<- dim(m.data2)[2]
nr
nc
image(x=1:nr, y=1:(nc-2), z=m.data2[,3:nc], axes=FALSE, frame.plot=TRUE, col=c("white","black"), main="Document Submission Status", xlab=NA, ylab=NA)
axis(1, 1:nr, labels=data$manager, las=2)
axis(2, 1:(nc-2), labels=colnames(m.data2[,3:nc]), las=2)