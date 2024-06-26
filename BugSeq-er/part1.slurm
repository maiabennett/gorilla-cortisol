#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=64000
#SBATCH --time=12:00:00
#SBATCH --job-name=analysis_part1
#SBATCH --partition=batch,guest
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=maiabennett@unomaha.edu
#SBATCH --error=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2/script_output/err.out
#SBATCH --output=/common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2/script_output/std.out
#SBATCH --open-mode=append

##########################################################################
# Importe the data into QIIME2 then summarize it using demux
# Trim adapter sequnces using cutadapt then summarize it using demux
##########################################################################


module load qiime2/2021.4

cd /common/claytonlab/maibennett/gorilla_cortisol/AnimalName-IndClusters/Cenzoo/qiime2

mkdir -p artifacts
mkdir -p exports

qiime tools import \
	--type 'SampleData[PairedEndSequencesWithQuality]' \
	--input-path manifest \
	--input-format PairedEndFastqManifestPhred33V2 \
	--output-path artifacts/demuxed-paired-end.qza

qiime demux summarize \
	--i-data artifacts/demuxed-paired-end.qza \
	--o-visualization artifacts/demux.qzv
	
#qiime cutadapt trim-paired \
#    --i-demultiplexed-sequences artifacts/demuxed-paired-end.qza \
#    --p-front-f CCTACGGGNGGCWGCAG \
#    --p-front-r GACTACHVGGGTATCTAATCC \
#    --o-trimmed-sequences artifacts/paired-end-demux-trimmed.qza \
#    --verbose > cutadapt_log.txt \

#qiime demux summarize \
#    --i-data artifacts/paired-end-demux-trimmed.qza \
#	--o-visualization artifacts/paired-end-demux-trimmed.qzv
