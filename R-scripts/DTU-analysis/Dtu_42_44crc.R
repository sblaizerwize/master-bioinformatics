# Install and load modules and libraries 
.libPaths("~/R/x86_64-pc-linux-gnu-library/4.4")

# Check if package is installed, if not then install
if (!require("IsoformSwitchAnalyzeR", quietly = TRUE)) {
    if (!require("BiocManager", quietly = TRUE))
        install.packages("BiocManager")
    BiocManager::install("IsoformSwitchAnalyzeR")
}

library(scales)
library(ggplot2)
library(tidyr)
library(dplyr)
library(S4Vectors)
library(reshape2)
library(corrplot)
library(factoextra)

library(SummarizedExperiment)
library(DESeq2)
library(IsoformSwitchAnalyzeR)
library(tidyverse)
library(dbplyr)
library(BiocParallel)
library(Biostrings)

## ------------------------------------------------------------------------------------------------
# Adjust workers according to cluster cores
ncores <- 16
register(MulticoreParam(workers = ncores))

# Import quantifications
salmonQuant <- importIsoformExpression(
    parentDir = "dtu_data/salmon"
)

head(salmonQuant$abundance, 2)
head(salmonQuant$counts, 2)

saveRDS(salmonQuant, file="dtu_data/salmonQuant_42_44.rds" )

## ------------------------------------------------------------------------------------------------
# Read 'se' object 
se_42 <- readRDS("dtu_data/gene.SummarizedExperiment.metadata_42.rds")
se_44 <- readRDS("dtu_data/gene.SummarizedExperiment.metadata_44.rds")

# Display 'se' object
se_42
se_44

# Display colNames 
colnames(se_42)
colnames(se_44)

# Display condition
colData(se_42)$condition
colData(se_44)$condition

# Display condition in salmonQuant
colnames(salmonQuant$abundance)

## ------------------------------------------------------------------------------------------------
# Define design matrix
myDesign <- data.frame(
  sampleID = colnames(salmonQuant$abundance)[-1],    # Exclude isoform_id column and include all sample names from srr17866817 to srr27320698  
  condition = c( colData(se_42)$condition , colData(se_44)$condition ) # Combine conditions from both se_42 and se_44
)
myDesign

# Define comparisonsToMake
mycomparisonsToMake <- data.frame(
  condition_1 = c( "normal_eocrc" , "normal_locrc" ),
  condition_2 = c( "tumor_eocrc" , "tumor_locrc" ) 
)
mycomparisonsToMake

## ------------------------------------------------------------------------------------------------
cat("1. Create switchAnalyzeRlist...\n")

# Create switchAnalyzeRlist
aSwitchList <- importRdata(
  isoformCountMatrix   = salmonQuant$counts,
  isoformRepExpression = salmonQuant$abundance,
  designMatrix         = myDesign,
  comparisonsToMake    = mycomparisonsToMake,
  isoformExonAnnoation = "dtu_data/gencode.v49.primary_assembly.annotation.gtf.gz",
  isoformNtFasta       = "dtu_data/gencode.v49.transcripts.fa.gz",
  fixStringTieAnnotationProblem = TRUE,
  showProgress = TRUE
)

cat("View aSwitchList summary...\n")

# View summary report
summary(aSwitchList)
saveRDS(aSwitchList, file="dtu_outputs/aSwitchList_gencode_42_44.rds")

## ------------------------------------------------------------------------------------------------
cat("2. Prefiltering...\n")
cat("Prefiltering summary with geneExpressionCutoff = 1; isoformExpressionCutoff = 0; Isoform fraction = 0...\n")

# Prefilter
mySwitchList <- preFilter(aSwitchList)
summary(mySwitchList)
saveRDS(mySwitchList, file="dtu_outputs/mySwitchList_gencode_42_44_filstandard.rds")
 
## ------------------------------------------------------------------------------------------------
cat("3. Differential Expression Analysis using TestSatuRn...\n")

# Identify differentially used isoforms with SatuRn
mySwitchList <- isoformSwitchTestSatuRn(
  mySwitchList,
  reduceToSwitchingGenes = TRUE,  # focus on switching genes relevant to CRC
  showProgress = TRUE
)

# Summarize results
extractSwitchSummary(mySwitchList)

## ------------------------------------------------------------------------------------------------
cat("4. Obtain Open Reading Frames (ORFs)...\n")

# Obtain Open Reading Frames (ORFs)
mySwitchList <- analyzeORF(
  mySwitchList,
  showProgress = TRUE 
)

## ------------------------------------------------------------------------------------------------
cat("5. Extracting sequences...\n")

# Extract Sequences
mySwitchList <- extractSequence(
    mySwitchList,
    outputPrefix = "dtu_42_44"
)
saveRDS(mySwitchList, file="dtu_outputs/mySwitchList_42_44_nt.rds")

## ------------------------------------------------------------------------------------------------
cat("6. Alternative and intron retention analysis...\n")

# Analyze alternative splicing
mySwitchList <- analyzeAlternativeSplicing(
  switchAnalyzeRlist = mySwitchList,
  quiet=TRUE
)

## ------------------------------------------------------------------------------------------------

# Analyze Intron Retention
mySwitchList <-analyzeIntronRetention(
  switchAnalyzeRlist = mySwitchList,
  onlySwitchingGenes = TRUE,
  alpha = 0.05,
  dIFcutoff = 0.1,
  showProgress = TRUE,
  quiet = TRUE
)

saveRDS(mySwitchList, file="dtu_outputs/mySwitchList_Asplicing_Iretention_42_44.rds")

# Extract 10 top switching genes (by q-value)
extractTopSwitches(
    mySwitchList, 
    filterForConsequences = FALSE, 
    n = 10, 
    sortByQvals = TRUE
)

## ------------------------------------------------------------------------------------------------
cat("7. Analyze Consequences of Isoform Switches...\n")

# AnalyzeSwitchConsequences
# tss -> alternative 5'UTR
# tts -> alternative 3'UTR

consequencesOfInterest <- c(
    "tss",
    "tts",
    "exon_number",
    "intron_structure",
    "intron_retention"
)

bioMechanismeAnalysis <- analyzeSwitchConsequences(
    mySwitchList,
    consequencesToAnalyze = consequencesOfInterest, 
    showProgress=TRUE
)

extractSwitchSummary(bioMechanismeAnalysis, filterForConsequences = FALSE)
extractSwitchSummary(bioMechanismeAnalysis, filterForConsequences = TRUE)

saveRDS(bioMechanismeAnalysis, file="dtu_outputs/mySwitchList_consequences_42_44.rds")