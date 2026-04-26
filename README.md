# RNA-seq Biomarker Analysis for Hepatobiliary Carcinoma

## Overview
This project focuses on identifying gene expression signatures and potential biomarkers in hepatobiliary carcinoma using RNA-seq data and bioinformatics pipelines.

## Dataset
- GEO Dataset: GSE148355
- Gene expression count data

## Methodology
1. Data preprocessing and normalization
2. Principal Component Analysis (PCA)
3. Differential Gene Expression Analysis (DESeq2)
4. Visualization (Volcano plot, Heatmap)
5. Functional enrichment analysis (DAVID, Enrichr, Reactome)

## Results
- Identified significantly upregulated and downregulated genes
- PCA analysis showed clear separation between control and disease samples
- Enrichment analysis revealed cancer-associated pathways

## Visualizations
- PCA plots
- Volcano plot
- Heatmap

## Key Findings
- Identified gene expression signatures relevant to hepatobiliary carcinoma
- Pathway analysis highlighted tumor progression mechanisms
- Potential biomarkers identified for further validation

## Tools Used
- R (DESeq2, ggplot2)
- Bioinformatics databases (GEO, DAVID, Reactome)

## Data Files
- differential_expression_results.csv: Contains DEGs identified using DESeq2
- pathway_enrichment.csv: Functional enrichment results
- pca_sample_data.csv: PCA visualization data

## Status
Completed

## Biological Interpretation
The identified differentially expressed genes and enriched pathways suggest key molecular mechanisms involved in hepatobiliary carcinoma progression and may serve as potential diagnostic or therapeutic biomarkers.

## Visual Outputs

### PCA Plot
Shows separation between control and disease samples.

### Volcano Plot
Highlights significantly upregulated and downregulated genes.

### Heatmap
Displays expression patterns of key genes across samples.
