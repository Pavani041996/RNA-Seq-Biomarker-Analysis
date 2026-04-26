# RNA-seq Visualization Plots

library(ggplot2)

# ---------------------------
# PCA Plot
# ---------------------------

pca_data <- read.csv("data/pca_sample_data.csv")

pca_plot <- ggplot(pca_data, aes(x = PC1, y = PC2, color = Condition)) +
  geom_point(size = 4) +
  ggtitle("PCA Plot") +
  theme_minimal()

ggsave("figures/pca_plot.png", pca_plot)

# ---------------------------
# Volcano Plot
# ---------------------------

deg_data <- read.csv("results/differential_expression_results.csv")

volcano_plot <- ggplot(deg_data, aes(x = log2FoldChange, y = -log10(pvalue), color = Regulation)) +
  geom_point(size = 3) +
  ggtitle("Volcano Plot") +
  theme_minimal()

ggsave("figures/volcano_plot.png", volcano_plot)

# ---------------------------
# Heatmap (simple version)
# ---------------------------

library(pheatmap)

heatmap_data <- as.matrix(deg_data[,2:4])
rownames(heatmap_data) <- deg_data$Gene

png("figures/heatmap.png")
pheatmap(heatmap_data)
dev.off()
