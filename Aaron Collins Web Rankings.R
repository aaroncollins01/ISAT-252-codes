library(igraph)
read<- read.graph("ALLMYEDGES.txt")
degree<- degree(g,mode=c("out"))
V(g)$name<- seq(vcount(g))-1
V(g)$core<- graph.coreness(g)
corenum<- 3
coredf<- data.frame(V(g)$name,V(g)$core)
vals<- which(coredf$V.g..core>corenum)
gsub<- induced.subgraph(g,vals)
summary(gsub)
layout=layout.fruchteran.reingold
plot(gsub,layout=layout.kamada.kawai)
pr<- (pr$vector*10000)
prdf<-data.frame(V(g)$name,prbig)
prdfsorted<- prdf[rev(order(prdf[,2]), c(1,2)]
prdfsorted[1:20,] 
au<- authority.score(g)
aubig<- (au$vector*100)
audf<- data.frame(V(g)$name,aubig)
ausorted<- audf[rev(order(audf[,2])), c(1,2)]
ausorted[1:20,]
hu<-hub.score(g)
hubig<- (hu$vector*100)
hudf<- data.frame(V(g)$name,hubig)
husorted<- hudf[rev(order(hudf[,2])), c(1,2)]
husorted[1:20,]
indf<- data.frame(V(g)$name,d)
indfsorted<- indf[rev(order(indf[,2])), c(1,2)]
indfsorted[1:20,]