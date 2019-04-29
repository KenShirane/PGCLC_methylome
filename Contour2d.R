###Load a required package###
library(ash)

###Read a table###
d6_EpiLC <- as.matrix(read.table("DNAme2kb_d6vsEpiLC.txt", header=T))

###2d count###
xy <- matrix (c(0, 0, 101.25, 101.25), 2, 2)
nbin <- c(81, 81)
bins <- bin2(d6_EpiLC, xy, nbin) 

###Save the result###
write.table(bins$nc, "d6vsEpiLC_2kbDNAme2dCnt.txt", row.names=F, col.names=F)
