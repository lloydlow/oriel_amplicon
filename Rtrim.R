file <- read.delim("stability.files",header = FALSE, stringsAsFactors = FALSE)
program <- "java -jar /Users/lloyd/Documents/Software/Trimmomatic-0.33/trimmomatic-0.33.jar PE -phred33 "
param <- "AVGQUAL:20 MINLEN:250"
for (i in 1:nrow(file)){
  Name <- file[i,1]
  For <- file[i,2]
  Rev <- file[i,3]
  For <- paste0(For," ")
  Rev <- paste0(Rev," ")
  For_pair <- paste0(Name,"_forward_paired.fq.gz ")
  For_unpair <- paste0(Name,"_forward_unpaired.fq.gz ")
  Rev_pair <- paste0(Name,"_reverse_paired.fq.gz ")
  Rev_unpair <- paste0(Name,"_reverse_unpaired.fq.gz ")
  toRun <- paste0(program,For,Rev,For_pair,For_unpair,Rev_pair,Rev_unpair,param)
  system(toRun)
}