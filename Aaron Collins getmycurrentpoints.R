getMyCurrentPoints=function(me){
source_https=function(u, unlink.tmp.certs = FALSE) {
require(RCurl)
if(!file.exists("cacert.pem")) {
download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile = "cacert.pem")
}
script=getURL(u, followlocation=TRUE, cainfo= "cacert.pem")
if(unlink.tmp.certs) unlink("cacert.pem")
eval(parse(text=script), envir=.GlobalEnv)
}
source_https("https://raw.githubusercontent.com/roseph/252-Redesign/master/loadPoints.R")
course=unique(df$class)
sc.pairs=unique(df[,c("student", "class")])
lookup.class=new.env()
for(i in 1:nrow(sc.pairs)){
lookup.class[[sc.pairs$student[i]]]=sc.pairs$class[i]
}
my.course=which(course==lookup.class[[me]])
if(nrow(df[df$student=="ALL" & df$class==course[my.course],]) > 0) {
current.all= sum(as.integer(df[df$student=="ALL" &
df$class==course[my.course],]$points))
} else {current.all=0}}