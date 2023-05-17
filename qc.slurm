#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem=85000
#SBATCH --time=10:00:00
#SBATCH --job-name=qc
#SBATCH --partition=batch
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=maiabennett@unomaha.edu
#SBATCH --error=/common/claytonlab/maibennett/gorilla_cortisol/qc/script_output/err.out
#SBATCH --output=/common/claytonlab/maibennett/gorilla_cortisol/qc/script_output/std.out
#SBATCH --open-mode=append


############################################
# Run fastQC for multiple samples
############################################


module load fastqc/0.11

cd /common/claytonlab/maibennett/gorilla_cortisol/raw_reads

declare -a sample_name=(7_S287_L001 8_S288_L001 9_S289_L001 10_S290_L001 143_S159_L001 144_S160_L001 145_S161_L001 146_S162_L001 147_S163_L001 148_S164_L001 149_S165_L001 14_S295_L001 15_S296_L001 16_S297_L001 17_S298_L001 18_S299_L001 19_S300_L001 20_S301_L001 21_S302_L001 150_S166_L001 151_S167_L001 152_S168_L001 153_S169_L001 154_S170_L001 155_S171_L001 22_S303_L001 23_S304_L001 24_S305_L001 25_S306_L001 26_S307_L001 27_S308_L001 28_S309_L001 29_S310_L001 156_S172_L001 157_S173_L001 158_S174_L001 159_S175_L001 160_S176_L001 161_S177_L001 162_S178_L001 30_S311_L001 31_S312_L001 32_S313_L001 33_S314_L001 36_S316_L001 37_S317_L001 38_S318_L001 163_S193_L001 164_S194_L001 168_S198_L001 169_S199_L001 170_S200_L001 41_S321_L001 42_S322_L001 43_S335_L001 44_S324_L001 39_S319_L001 46_S326_L001 47_S116_L001 172_S202_L001 173_S203_L001 174_S205_L001 50_S329_L001 48_S327_L001 49_S328_L001 51_S330_L001 52_S331_L001 53_S332_L001 179_S210_L001 180_S211_L001 181_S212_L001 182_S213_L001 183_S214_L001 184_S215_L001 185_S216_L001 54_S333_L001 55_S334_L001 56_S323_L001 57_S336_L001 58_S337_L001 59_S338_L001 60_S339_L001 61_S340_L001 186_S217_L001 187_S218_L001 188_S219_L001 190_S221_L001 191_S222_L001 67_S191_L001 68_S345_L001 69_S346_L001 70_S347_L001 71_S348_L001 72_S349_L001 73_S350_L001 74_S351_L001 198_S229_L001 199_S230_L001 93_S110_l001 94_S111_L001 95_S112_L001 96_S113_L001 97_S114_L001 98_S115_L001 220_S252_L001 221_S253_L001 222_S254_L001 223_S255_L001 224_S256_L001 225_S257_L001 103_S121_L001 104_S122_L001 105_S123_L001 106_S124_L001 107_S125_L001 108_S126_L001 109_S127_L001 230_S262_L001 231_S263_L001 232_S264_L001 233_S265_L001 234_S266_L001 235_S270_L001 236_S271_L001)

echo "Started QC"
for i in ${sample_name[@]}; do
	fastqc $i"_R1_001.fastq.gz" -o /common/claytonlab/maibennett/gorilla_cortisol/qc 
	fastqc $i"_R2_001.fastq.gz" -o /common/claytonlab/maibennett/gorilla_cortisol/qc
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
