#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8

A1=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA
A2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT

LOC=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA
SRR_302_1=$LOC/Project2_Part1/Crh_rhy51_EO_6cm_1/Crh_rhy51_EO_6cm_1_R1.fastq
SRR_302_2=$LOC/Project2_Part1/Crh_rhy51_EO_6cm_1/Crh_rhy51_EO_6cm_1_R2.fastq

SRR_302_1_OUT=$LOC/Project2_Part2/cutadapt_outs/Crh_rhy51_EO_6cm_1_R1_out.fastq.gz
SRR_302_2_OUT=$LOC/Project2_Part2/cutadapt_outs/Crh_rhy51_EO_6cm_1_R2_out.fastq.gz

SRR_376_1=$LOC/Project2_Part1/CcoxCrh_comrhy114_EO_adult_1/CcoxCrh_comrhy114_EO_adult_1_R1.fastq
SRR_376_2=$LOC/Project2_Part1/CcoxCrh_comrhy114_EO_adult_1/CcoxCrh_comrhy114_EO_adult_1_R2.fastq

SRR_376_1_OUT=$LOC/Project2_Part2/cutadapt_outs/CcoxCrh_comrhy114_EO_adult_1_R1_out.fastq.gz
SRR_376_2_OUT=$LOC/Project2_Part2/cutadapt_outs/CcoxCrh_comrhy114_EO_adult_1_R2_out.fastq.gz

/usr/bin/time -v pixi run cutadapt -j 8 -a $A1 -A $A2 -o $SRR_302_1_OUT -p $SRR_302_2_OUT $SRR_302_1 $SRR_302_2
/usr/bin/time -v pixi run cutadapt -j 8 -a $A1 -A $A2 -o $SRR_376_1_OUT -p $SRR_376_2_OUT $SRR_376_1 $SRR_376_2