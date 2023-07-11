#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=85000
#SBATCH --time=10:00:00
#SBATCH --job-name=qc
#SBATCH --partition=batch
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=maiabennett@unomaha.edu
#SBATCH --error=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qc/script_output/err.out
#SBATCH --output=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qc/script_output/std.out
#SBATCH --open-mode=append


############################################
# Run fastQC for multiple samples
############################################


module load fastqc/0.11

cd /common/claytonlab/maibennett/gorilla_cortisol/raw_reads

declare -a sample_name=(22_S303_L001 23_S304_L001 24_S305_L001 25_S306_L001 26_S307_L001 27_S308_L001 28_S309_L001 29_S310_L001 156_S172_L001 157_S173_L001 158_S174_L001 159_S175_L001 160_S176_L001 161_S177_L001 162_S178_L001)

echo "Started QC"
for i in ${sample_name[@]}; do
	fastqc $i"_R1_001.fastq.gz" -o /common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qc 
	fastqc $i"_R2_001.fastq.gz" -o /common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qc
done
echo "Finished QC"


############################################
# Run multiqc for all fastQC results
############################################

# Run multiqc in order to look at the QC of the data in one report. 
cd qc
module load multiqc/py37/1.8
mkdir multiqc
echo "Started multiqc"
multiqc *_fastqc.zip -o multiqc/
echo "Finishied mutiqc"
