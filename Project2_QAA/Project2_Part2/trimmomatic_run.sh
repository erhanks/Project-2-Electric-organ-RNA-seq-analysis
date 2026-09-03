#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8

LOC=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part2

CUTAD=$LOC/cutadapt_outs
TRIM=$LOC/trimmomatic_outs

SRR_302_1=$CUTAD/Crh_rhy51_EO_6cm_1_R1_out.fastq.gz
SRR_302_2=$CUTAD/Crh_rhy51_EO_6cm_1_R2_out.fastq.gz

SRR_302_1P=$TRIM/Crh_rhy51_EO_6cm_1_R1_pair.fastq.gz
SRR_302_1U=$TRIM/Crh_rhy51_EO_6cm_1_R1_unpair.fastq.gz

SRR_302_2P=$TRIM/Crh_rhy51_EO_6cm_1_R2_pair.fastq.gz
SRR_302_2U=$TRIM/Crh_rhy51_EO_6cm_1_R2_unpair.fastq.gz

SRR_376_1=$CUTAD/CcoxCrh_comrhy114_EO_adult_1_R1_out.fastq.gz
SRR_376_2=$CUTAD/CcoxCrh_comrhy114_EO_adult_1_R2_out.fastq.gz

SRR_376_1P=$TRIM/CcoxCrh_comrhy114_EO_adult_1_R1_pair.fastq.gz
SRR_376_1U=$TRIM/CcoxCrh_comrhy114_EO_adult_1_R1_unpair.fastq.gz

SRR_376_2P=$TRIM/CcoxCrh_comrhy114_EO_adult_1_R2_pair.fastq.gz
SRR_376_2U=$TRIM/CcoxCrh_comrhy114_EO_adult_1_R2_unpair.fastq.gz

#/usr/bin/time -v pixi run trimmomatic PE \
#$SRR_302_1 $SRR_302_2 \
#$SRR_302_1P $SRR_302_1U \
#$SRR_302_2P $SRR_302_2U \
#-Xmx16g -threads 8 \
#ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

/usr/bin/time -v pixi run trimmomatic PE \
$SRR_376_1 $SRR_376_2 \
$SRR_376_1P $SRR_376_1U \
$SRR_376_2P $SRR_376_2U \
-Xmx16g -threads 8 \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35