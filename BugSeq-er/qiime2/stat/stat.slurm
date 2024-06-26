#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=64000
#SBATCH --time=12:00:00
#SBATCH --job-name=stat_analysis
#SBATCH --partition=batch,guest
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=maiabennett@unomaha.edu
#SBATCH --error=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2/script_output/errstat.out
#SBATCH --output=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2/script_output/stdstat.out
#SBATCH --open-mode=append


module load qiime2/2022.2

cd /common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2/


# alpha diversity
qiime diversity alpha-group-significance \
  --i-alpha-diversity core-metrics-results/faith_pd_vector.qza \
  --m-metadata-file metadata.tsv \
  --o-visualization stat/faiths_pd_statistics.qzv
 
qiime diversity alpha-group-significance \
 --i-alpha-diversity core-metrics-results/evenness_vector.qza \
 --m-metadata-file metadata.tsv \
 --o-visualization stat/evenness_statistics.qzv
 
qiime diversity alpha-group-significance \
  --i-alpha-diversity core-metrics-results/shannon_vector.qza \
  --m-metadata-file metadata.tsv \
  --o-visualization stat/shannon_pd_statistics.qzv 
 
qiime diversity alpha-group-significance \
  --i-alpha-diversity core-metrics-results/observed_features_vector.qza \
  --m-metadata-file metadata.tsv \
  --o-visualization stat/observed_features_pd_statistics.qzv 
 
 
# beta diversity
qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/bray_curtis_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column CortGroup \
  --o-visualization stat/bray-curtis-type-significance.qzv

qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/bray_curtis_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column Age \
  --o-visualization stat/bray-curtis-sub-type-significance.qzv
  
qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/jaccard_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column CortGroup \
  --o-visualization stat/jaccard-type-significance.qzv

qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/jaccard_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column Age \
  --o-visualization stat/jaccard-sub-type-significance.qzv  

qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/unweighted_unifrac_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column CortGroup \
  --o-visualization stat/unweighted-unifrac-type-significance.qzv

qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/weighted_unifrac_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column Age \
  --o-visualization stat/weighted-unifrac-sub-type-significance.qzv
  

qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/weighted_unifrac_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column CortGroup \
  --o-visualization stat/weighted-unifrac-type-significance.qzv    
 
qiime diversity beta-group-significance \
  --i-distance-matrix core-metrics-results/unweighted_unifrac_distance_matrix.qza \
  --m-metadata-file metadata.tsv \
  --m-metadata-column Age \
  --o-visualization stat/unweighted-unifrac-sub-type-significance.qzv

 
  
  
  
  
