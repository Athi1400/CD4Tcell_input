#To see all the instances in a package 
lsf.str("package:chromatinsight.tools")
library(chromatinsight.tools)
setwd("/../../mnt/sexreg/athira/CD4/")

dataMales = pileup(grouping = "grouping.txt", key = "male", direc =
                     "/../../mnt/sexreg/athira/CD4/", chrom = "chr10")

dataFemales = pileup(grouping = "grouping.txt", key = "female", direc
                     = "/../../mnt/sexreg/athira/CD4/", chrom = "chr10")

drawpilegb(dataFemales, dataMales,
           coord = "chr10:12,589,6564-12,600,9592",
           histmod = "ac",
           label1 = "females", label2 = "males",
           filename = "Xist_mono_ac2.png")

compareDistributions(dimorphismMono, dimorphismMonoRnd,
                     label1 = "observed", label2 = "random",
                     filename = "comparison_mono_ac2.png")

getheatmap(grouping="grouping.txt", key = "male", coord = "chr10:12,589,6564-12,600,9592", histmod = "H3K27ac",windowsize = 200,
           
           direc="/../../mnt/sexreg/athira/CD4/",filename = "Tcell-h3k27ac-male.png")

getheatmap(grouping="grouping.txt", key = "female", coord = "chr10:12,589,6564-12,600,9592", histmod = "H3K27ac",windowsize = 200,
           
           direc="/../../mnt/sexreg/athira/CD4/",filename = "Tcell-h3k27ac-male.png")