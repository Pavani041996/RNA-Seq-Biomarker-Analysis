library(DESeq2)

# Load data
countData <- read.csv("data/differential_expression_results.csv", row.names=1)

# Example condition (modify if needed)
condition <- factor(c("Control","Control","Control","Disease","Disease","Disease"))

colData <- data.frame(row.names=colnames(countData), condition)

# DESeq2 pipeline
dds <- DESeqDataSetFromMatrix(countData = countData,
                              colData = colData,
                              design = ~ condition)

dds <- DESeq(dds)

res <- results(dds)

# Save results
write.csv(as.data.frame(res), file="results/deseq2_results.csv")
